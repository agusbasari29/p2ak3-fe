<template>
  <section id="sidebar">
    <a href="#" class="branding">
        <i class="bx text-blue-500">
            <UIcon name="i-heroicons-chat-bubble-bottom-center-solid" />
        </i>
        <span class="text-xl text-blue-500">SIMPELWASNAKER</span>
    </a>
    <SideMenuTop />
    <SideMenuBottom />
  </section>
</template>

<script lang="ts" setup>
import { SideMenuTop } from '#components'
</script>

<style scoped>
section {
    display: block;
    unicode-bidi: isolate;
}
#sidebar {
    position: fixed;
    top: 0;
    left: 0;
    width: 280px;
    height: 100%;
    background: var(--light);
    z-index: 2000;
    font-family: var(--lato);
    transition: .3s ease;
    overflow-x: hidden;
    scrollbar-width: none;
}
#sidebar .branding {
font-size: 24px;
    font-weight: 700;
    height: 56px;
    display: flex;
    align-items: center;
    color: var(--blue);
    position: sticky;
    top: 0;
    left: 0;
    background: var(--light);
    z-index: 500;
    padding-bottom: 20px;
    box-sizing: content-box;
}

#sidebar .branding .bx {
    min-width: 60px;
    display: flex;
    justify-content: center;
}
</style>