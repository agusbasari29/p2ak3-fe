<template>
   <SideBar />
   <section id="content">
    <Navigation />
    <Contents>
       <slot />
     </Contents>
   </section>

</template>

<script lang="ts" setup>
import { SideBar, Contents } from '#components';

</script>

<style>

</style>