<template>
  <div class="section">
    <Carousel />
    <div class="container">
      <div class="has-text-centered mt-5">
        <b-button
          :to="{ path: '/expert' }"
          class="is-info is-light"
          icon-left="play-circle"
          size="is-large"
          tag="router-link"
        >Iniciar</b-button>
      </div>
    </div>
  </div>
</template>
