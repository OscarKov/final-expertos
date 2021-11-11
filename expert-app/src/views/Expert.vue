<template>
  <section class="section">
    <b-notification
      :active="notification.active"
      :type="notification.type"
      aria-close-label="Close notification"
      class="notifi"
      has-icon
    >{{ notification.text }}</b-notification>
    <div class="container">
      <h1
        @click="sendData"
        class="title has-text-centered"
      >Bienvenido</h1>
      <h2
        class="subtitle is-4"
      >A continuación seleccione las caracteristicas que se adapten a lo identificado en el cultivo:</h2>
      <div class="columns is-multiline mt-5">
        <div
          :key="idx"
          class="column is-6 is-3-desktop"
          v-for="(option, idx) in traitOptions"
        >
          <SelectableCard
            :imageUrl="option.imgUrl"
            :selected="isSelected(option)"
            :title="option.name"
            @click.native="toggleSelection(option)"
          />
        </div>
      </div>
    </div>
  </section>
</template>

<script lang="ts">
import { defineComponent } from "@vue/composition-api";

interface Option {
  key: string;
  name: string;
  imgurl: string;
  value: number;
}

interface WelcomeMsg {
  msg: string;
  value: number;
}

export default defineComponent({
  data: () => ({
    error: false,
    notification: {
      active: false,
      type: "",
      text: "",
    },
    traitOptions: [
      {
        key: "mohoBellosoEnves",
        name: "Moho Belloso en el enves de la hoja.",
        imgUrl: "https://picsum.photos/600/400",
        value: 0,
      },
      {
        key: "tallosQuebradizos",
        name: "Plantas con tallos quebradizos.",
        imgUrl: "https://picsum.photos/600/400",
        value: 0,
      },
      {
        key: "manchasCMOHojas",
        name: "Manchas color marron oscuro en las hojas.",
        imgUrl: "https://picsum.photos/600/400",
        value: 0,
      },
      {
        key: "lesionesCMBrotes",
        name: "Lesiones color marron en los brotes.",
        imgUrl: "https://picsum.photos/600/400",
        value: 0,
      },
      {
        key: "tuberculosAereos",
        name: "Tuberculos por encima de la tierra.",
        imgUrl: "https://picsum.photos/600/400",
        value: 0,
      },
      {
        key: "enrollamientoHojas",
        name: "Enrollamiento de las hojas.",
        imgUrl: "https://picsum.photos/600/400",
        value: 0,
      },
    ],
  }),
  methods: {
    toggleSelection(option: Option) {
      if (option.value == 1) {
        option.value = 0;
      } else {
        option.value = 1;
      }
    },
    isSelected(option: Option) {
      return option.value == 1 ? true : false;
    },
    async parseData() {
      let parsed: any = {};
      await this.traitOptions.forEach((option) => {
        parsed[`${option.key}`] = option.value;
      });
      return parsed;
    },
    async sendData() {
      const base = import.meta.env.VITE_APP_API_URL;
      let parsedData = await this.parseData();
      console.log(parsedData);

      this.axios
        .post(base + "/send", parsedData)
        .then(({ data }) => {
          if (data.error != 0) {
            this.showNotification(data.msg, "is-danger");
          } else {
            this.showNotification(data.msg, "is-success");
          }
        })
        .catch((err) => {
          this.showNotification(err, "is-danger");
        });
    },
    async getApiMsg(): Promise<WelcomeMsg> {
      const base = import.meta.env.VITE_APP_API_URL;
      const { data } = await this.$http.get(base + "/");
      return data;
    },
    showNotification(text: string, type: string) {
      this.notification.text = text;
      this.notification.type = type;
      this.notification.active = true;
    },
  },
  mounted() {
    this.getApiMsg()
      .then((data) => {
        this.showNotification(data.msg, "is-success");
      })
      .catch(() => {
        this.showNotification("Error al conectar con el API.", "is-danger");
      });
  },
});
</script>

<style scoped>
.notifi {
  position: fixed;
  z-index: 100;
  width: 415px;
  right: 0;
  bottom: 0;
}
</style>