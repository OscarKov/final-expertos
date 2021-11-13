<template>
  <section class="section">
    <b-loading
      :is-full-page="false"
      v-model="isLoading"
    ></b-loading>
    <b-notification
      :duration="notification.duration"
      :type="notification.type"
      aria-close-label="Close notification"
      auto-close
      class="notifi"
      has-icon
      progress-bar
      v-model="notification.active"
    >{{ notification.text }}</b-notification>
    <b-modal
      has-modal-card
      v-model="modalActive"
    >
      <template #default>
        <ResultBoard
          :description="solution.tratamiento"
          :name="solution.enfermedad"
        />
      </template>
    </b-modal>
    <div class="container">
      <h1 class="title is-1 has-text-centered">Bienvenido</h1>
      <h2
        class="subtitle is-4 my-5"
      >A continuación seleccione las caracteristicas que se adapten a lo identificado en el cultivo:</h2>
      <div class="columns is-multiline mt-5">
        <div
          :key="idx"
          class="column is-6 is-3-desktop"
          v-for="(option, idx) in traitOptions"
        >
          <SelectableCard
            :imageUrl="option.imgUrl"
            :selected="option.value == 1"
            :title="option.name"
            @click.native="toggleSelection(option)"
          />
        </div>
      </div>
      <div class="columns mt-5">
        <div class="column is-6">
          <b-radio-button
            native-value="true"
            type="is-success is-light is-outlined"
            v-model="isNaturalMedication"
          >
            <b-icon icon="sprout-outline"></b-icon>
            <span>Usar un tratamiento Natural</span>
          </b-radio-button>
        </div>
        <div class="column is-6">
          <b-radio-button
            native-value="false"
            type="is-success is-light is-outlined"
            v-model="isNaturalMedication"
          >
            <b-icon icon="bottle-tonic-plus-outline"></b-icon>
            <span>Usar un tratamiento Quimico</span>
          </b-radio-button>
        </div>
      </div>
      <b-button
        @click="resolve"
        class="is-info is-light"
        expanded
        icon-left="play-circle"
        size="is-large"
      >Enviar</b-button>
    </div>
    <b-tooltip
      @click.native="clearSelection"
      class="floating-btn is-info"
      label="Borrar Selección."
    >
      <b-button
        class="is-danger is-large"
        icon-right="delete"
        rounded
      ></b-button>
    </b-tooltip>
  </section>
</template>

<script lang="ts">
import { defineComponent } from "@vue/composition-api";

interface TraitOption {
  key: string;
  name: string;
  imgurl: string;
  value: number;
}

interface WelcomeMsg {
  msg: string;
  value: number;
}

interface Solution {
  enfermedad: string;
  tratamiento: string;
  msg: string;
  error: number;
}

export default defineComponent({
  data: () => ({
    isLoading: true,
    error: false,
    modalActive: false,
    notification: {
      active: false,
      type: "",
      text: "",
      duration: 4000,
    },
    minimumSelections: 1,
    traitOptions: [] as TraitOption[],
    solution: {} as Solution,
    isNaturalMedication: "true",
  }),
  methods: {
    toggleSelection(option: TraitOption) {
      if (option.value == 1) {
        option.value = 0;
      } else {
        option.value = 1;
      }
    },
    clearSelection() {
      this.traitOptions.forEach((option) => {
        option.value = 0;
      });
    },
    async parseData() {
      let parsed: any = {};
      let medicationOptions = {
        tratamientoNatural: 1,
        tratamientoQuimico: 0,
      };
      await this.traitOptions.forEach((option) => {
        parsed[`${option.key}`] = option.value;
      });
      if (this.isNaturalMedication !== "true") {
        medicationOptions.tratamientoNatural = 0;
        medicationOptions.tratamientoQuimico = 1;
      }
      parsed = { ...parsed, ...medicationOptions };
      console.log(parsed);
      return parsed;
    },
    verifySelections() {
      const selected = this.traitOptions.filter((option) => option.value == 1);
      console.log(selected);

      return selected.length >= this.minimumSelections;
    },
    async resolve() {
      if (!this.verifySelections()) {
        this.showNotification(
          `Debes seleccionar al menos ${this.minimumSelections} opcion(es)`,
          "is-danger"
        );
        return;
      }
      try {
        await this.sendData();
        const sol = await this.requestSolution();
        if (sol.error == 1) {
          throw new Error(sol.msg);
        }
        this.solution = sol;
        this.modalActive = true;
      } catch (error: unknown) {
        const err = error as Error;
        this.showNotification(err.message, "is-danger");
      }
    },
    showNotification(text: string, type: string) {
      this.notification.text = text;
      this.notification.type = type;
      this.notification.active = true;
    },
    async sendData() {
      const base = import.meta.env.VITE_APP_API_URL;
      let parsedData = await this.parseData();
      const { data } = await this.axios.post(base + "/send", parsedData);
      if (data.error != 0) {
        this.showNotification(data.msg, "is-danger");
        throw new Error(data.msg);
      }
    },
    async getApiMsg(): Promise<WelcomeMsg> {
      const base = import.meta.env.VITE_APP_API_URL;
      const { data } = await this.$http.get(base + "/");
      return data;
    },
    async requestTraitOptions(): Promise<TraitOption[]> {
      const base = import.meta.env.VITE_APP_API_URL;
      const { data } = await this.$http.get(base + "/trait-options");
      return data;
    },
    async requestSolution(): Promise<Solution> {
      const base = import.meta.env.VITE_APP_API_URL;
      const { data } = await this.$http.get(base + "/solution");
      return data;
    },
  },
  mounted() {
    this.getApiMsg()
      .then(() => {
        // this.showNotification(data.msg, "is-success");
        this.isLoading = false;
      })
      .catch(() => {
        this.showNotification(
          "Error al conectar con el API. Será redirigido al inicio.",
          "is-danger"
        );
        setTimeout(() => {
          this.$router.push("/");
        }, this.notification.duration);
      });
    this.requestTraitOptions().then((options) => {
      this.traitOptions = options;
    });
  },
});
</script>

<style scoped>
.notifi {
  position: fixed;
  z-index: 100;
  width: 415px;
  left: 2rem;
  bottom: 0;
}
.floating-btn {
  position: fixed;
  z-index: 15;
  right: 2rem;
  bottom: 2rem;
}
</style>