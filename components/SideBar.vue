<template>
    <section class="fixed w-280 h-full">
        <NuxtLink to="/" class="pb-20 h-56 flex item-center text-2xl font-bold text-blue-500" style="z-index: 2000; overflow-x: hidden; scrollbar-width: none;">
            <UIcon name="i-heroicons-chat-bubble-bottom-center-solid" />
            <span class="text-xl text-blue-500">SIMPELWASNAKER</span>
        </NuxtLink>
        <ul class="side-menu top">
            <li>
                <NuxtLink to="/dashboard" class="text-md">
                    <i class="bx">
                        <UIcon name="i-heroicons-squares-2x2-solid" />
                    </i>
                    <span class="text-md">Dashboard Admin</span>
                </NuxtLink>
            </li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
        </ul>
  </section>
</template>

<script lang="ts" setup>
</script>

<style scoped>
section {
    display: block;
    unicode-bidi: isolate;
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

#sidebar .side-menu li  {
    width: 100%;
    height: 100%;
    display: flex;
    align-items: center;
    border-radius: 48px;
    font-size: 16px;
    white-space: nowrap;
    overflow-x: hidden;
}
</style>