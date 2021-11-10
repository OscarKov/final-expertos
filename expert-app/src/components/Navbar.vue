<template>
  <b-navbar class="is-danger">
    <template #brand>
      <b-navbar-item
        :to="{ path: '/' }"
        tag="router-link"
      >{{ appName }}</b-navbar-item>
    </template>
    <template #end>
      <b-navbar-item
        :to="{ path: '/' }"
        tag="router-link"
      >Inicio</b-navbar-item>
      <b-navbar-dropdown label="Información">
        <b-navbar-item
          :to="{ path: '/about' }"
          tag="router-link"
        >Acerca de</b-navbar-item>
      </b-navbar-dropdown>
    </template>
  </b-navbar>
</template>

<script lang="ts">
import { computed, defineComponent } from "vue-demi";
import { routes } from "@/router";
import { useDark, useToggle } from "@vueuse/core";

export default defineComponent({
  setup: (_, ctx) => {
    // Import config from .evn
    const appName = import.meta.env.VITE_APP_NAME;

    const availableRoutes = routes.filter((route) => route.name != "NotFound");
    const currentRoute = computed(() => ctx.root.$route.name);

    const isDark = useDark();
    const toggle = useToggle(isDark);

    return { appName, routes: availableRoutes, currentRoute, toggle, isDark };
  },
});
</script>
