<template>
  <NuxtLayout class="layouts">
    <NuxtPage />
  </NuxtLayout>
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
</template>

<script lang="ts" setup>
const colorMode = useColorMode()
const isDark = computed({
  get () {
    return colorMode.value === 'dark'
  },
  set () {
    colorMode.preference = colorMode.value === 'dark' ? 'light' : 'dark'
  }
})
</script>

