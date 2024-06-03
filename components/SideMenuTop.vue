<template>
  <div class="side-menu top">
    <VerticalMenu :items="items" />
  </div>
</template>

<script lang="ts" setup>
const route = useRoute()
const items = [{
    label: 'dashboard',
    icon: 'i-heroicons-squares-2x2-solid',
    
}, {

}
]
</script>

<style scoped>
</style>