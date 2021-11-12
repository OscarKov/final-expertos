<template>
  <div class="section">
    <Carousel />
    <div class="container mt-5">
      <b-button
        :to="{ path: '/expert' }"
        class="is-info is-light"
        expanded
        icon-left="play-circle"
        size="is-large"
        tag="router-link"
      >Iniciar</b-button>
    </div>
  </div>
</template>
