<template>
  <section>
    <b-carousel
      :interval="interval"
      :progress="progress"
      :progress-type="progressType"
      pause-text="Pausado"
    >
      <b-carousel-item
        :key="i"
        v-for="(carousel, i) in carousels"
      >
        <section :class="`hero is-medium is-${carousel.color}`">
          <div class="hero-body has-text-centered">
            <h1 class="title">{{ carousel.title }}</h1>
          </div>
        </section>
      </b-carousel-item>
    </b-carousel>
  </section>
</template>

<script lang="ts">
import { defineComponent } from "vue-demi";

export default defineComponent({
  data: () => ({
    progress: true,
    progressType: "is-primary",
    interval: 6000,
    carousels: [
      {
        title: "SEPAP te ayuda a verificar el estado de tu cultivo.",
        color: "primary",
      },
      {
        title: "Diagnostica enfermedades y te ayuda a elegir un tratamiento",
        color: "info",
      },
    ],
  }),
});
</script>
