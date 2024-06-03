<template>
  <NuxtLoadingIndicator />
  <ClientOnly>
    <UButton
      :icon="isDark ? 'i-heroicons-moon-20-solid' : 'i-heroicons-sun-20-solid'"
      color="indigo"
      variant="ghost"
      aria-label="Theme"
      @click="isDark = !isDark"
      class="float-right hover:animate-pulse opacity-100"
    />
    <template #fallback>
      <div class="w-8 h-8" />
    </template>
  </ClientOnly>
  <NuxtLayout class="layouts">
    <NuxtPage />
  </NuxtLayout>
</template>

<script lang="ts" setup>
const router = useRouter()
const colorMode = useColorMode()
const isDark = computed({
  get () {
    return colorMode.value === 'dark'
  },
  set () {
    colorMode.preference = colorMode.value === 'dark' ? 'light' : 'dark'
  }
})

const nuxtApp = useNuxtApp()
const loading = ref(false)
nuxtApp.hook("page:start", () => {
  loading.value = true;
});
nuxtApp.hook("page:finish", () => {
  loading.value = false;
});
</script>

