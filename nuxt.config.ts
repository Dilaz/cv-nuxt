// https://v3.nuxtjs.org/api/configuration/nuxt.config
export default defineNuxtConfig({
  compatibilityDate: "2024-10-08",
  ssr: true,
  devtools: { enabled: true },
  modules: [
    "@nuxt/eslint",
    "@nuxt/test-utils/module",
    "@nuxtjs/seo"
  ],
  site: {
    url: 'https://cv.binarydream.fi',
    indexable: true,
    name: 'Risto Viitanen',
  },
  ogImage: {
    enabled: process.env.NODE_ENV !== "test",
    zeroRuntime: true
  }
})

