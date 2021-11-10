<template>
  <section class="section">
    <div class="container">
      <h1 class="title has-text-centered">Bienvenido</h1>
      <h2
        class="subtitle is-4"
      >A continuación seleccione las caracteristicas que se adapten a lo identificado en el cultivo:</h2>
      <div class="columns is-multiline mt-5">
        <div
          :key="idx"
          class="column is-6 is-3-desktop"
          v-for="(option, idx) in options"
        >
          <SelectableCard
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
  name: string;
  value: number;
}

export default defineComponent({
  data: () => ({
    options: [
      { name: "Tallos Quebradizos", value: 0 },
      { name: "Tallos Quebradizos", value: 0 },
      { name: "Tallos Quebradizos", value: 0 },
      { name: "Tallos Quebradizos", value: 0 },
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
  },
});
</script>
