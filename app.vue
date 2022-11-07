<template>
  <main id="app">
      <h1>Risto Viitanen</h1>
      <p>This site lists the programming skills I see frequently in the current programming scene. It's not a
          complete list, but contains the things I find important.</p>
      <Skills></Skills>
      <ForkMe url="https://github.com/dilaz"></ForkMe>
  </main>
</template>

<style lang="scss">
  body {
      background-color: #0f1015;
      color: rgb(194, 190, 183);
  }
  #app {
      font-family: 'Open Sans', sans-serif;
      font-weight: 300;
      -webkit-font-smoothing: antialiased;
      -moz-osx-font-smoothing: grayscale;
      width: 95%;
      max-width: 750px;
      margin: 60px auto 0 auto;
      font-size: 14px;
      padding-bottom: 40px;
  }
  h1 {
      text-align: center;
      + p {
          font-size: 16px;
      }
  }
  h1, h2, h3, h4 {
      font-family: 'Roboto', sans-serif;
      font-weight: 400;
  }
  .screen-reader-only {
      border: 0;
      clip: rect(1px, 1px, 1px, 1px);
      clip-path: inset(50%);
      height: 1px;
      margin: -1px;
      overflow: hidden;
      padding: 0;
      position: absolute;
      width: 1px;
      word-wrap: normal !important;
  }
</style>
