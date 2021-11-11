import Vue from "vue";
import App from "@/App.vue";
import { createApp, h } from "vue-demi";

// import "windi.css";
import router from "@/router";

import axios from "axios";
import VueAxios from "vue-axios";

Vue.use(VueAxios, axios);

import Buefy from "buefy";
import "buefy/dist/buefy.css";

Vue.use(Buefy);

Vue.config.productionTip = false;
Vue.config.devtools = true;

const app = createApp({
  router,
  render: () => h(App),
});

app.mount("#app");
