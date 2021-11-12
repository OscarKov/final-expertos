<template>
  <div class="modal-card">
    <header class="modal-card-head">
      <h2 class="subtitle">Diagnostico del cultivo</h2>
    </header>
    <section class="modal-card-body">
      <h2 class="subtitle">
        El cultivo tiene:
        <strong>{{ name }}</strong>
      </h2>
      <h2>Puedes mitigar el impacto de esta enfermedad aplicando:</h2>
      <p>
        <strong>{{ description }}</strong>
      </p>
    </section>
  </div>
</template>
<script lang="ts">
import { defineComponent } from "vue-demi";

export default defineComponent({
  name: "ResultBoard",
  props: {
    name: String,
    description: String,
  },
});
</script>
<style scoped>
</style>