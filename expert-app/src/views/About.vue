<template>
  <section class="section plants-bg">
    <div class="container has-text-centered">
      <h1 class="title">{{ appName }}</h1>
      <h2
        class="subtitle"
      >Sistema experto para la identificacion de enfermedades de los cultivos de papa.</h2>
    </div>
    <div class="columns mt-5">
      <div
        :key="idx"
        class="column"
        v-for="(creator, idx) in team"
      >
        <div class="box">
          <h3 class="subtitle is-3">{{ creator.name }}</h3>
        </div>
      </div>
    </div>
  </section>
</template>

<script lang="ts">
import { defineComponent } from "@vue/composition-api";

export default defineComponent({
  setup: () => {
    const appName = import.meta.env.VITE_APP_NAME;
    const team = [
      { name: "Oscar Jurado", area: "Frontend - Backend" },
      { name: "Ivan Morales", area: "Backend - Prolog" },
      { name: "Yesid Acosta", area: "Documental" },
    ];
    return { appName, team };
  },
});
</script>

<style>
.plants-bg {
  background-image: url("https://kft-capital.com/wp-content/uploads/2020/01/Potatoes-KFT-1.jpg");
  height: 100vh;
}
</style>
