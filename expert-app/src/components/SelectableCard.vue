<template>
  <div
    class="box selectable"
    style="height: 100%;"
    v-bind:class="{ 'selected': selected }"
  >
    <b-icon
      :icon="selected ? 'checkbox-marked' : 'checkbox-blank-outline'"
      class="badge"
      type="is-success"
    ></b-icon>
    <b-image
      :alt="'Imagen ' + title"
      :src="imageUrl"
    ></b-image>
    <h4>{{ title }}</h4>
  </div>
</template>

<script lang="ts">
import { defineComponent } from "vue-demi";

export default defineComponent({
  name: "SelectableCard",
  props: {
    title: String,
    imageUrl: String,
    selected: Boolean,
  },
  data: () => ({
    dynClass: {
      selected: false,
    },
  }),
});
</script>

<style scoped>
.badge {
  float: right;
}
.selected {
  border: solid 2px aquamarine;
}
.selectable {
  cursor: pointer;
  transition: all 300ms ease-out;
}
.selectable:hover {
  transform: scale(1.1);
}
</style>