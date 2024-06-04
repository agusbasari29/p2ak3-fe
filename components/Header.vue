<template>
    <header class="bg-background/75 backdrop-blur border-b -mb-px sticky top-0 z-50 border-gray-200 dark:border-gray-800">
        <div class="mx-auto px-4 sm:px-6 lg:px-8 max-w-7xl flex items-center justify-between gap-3 h-[--header-height]">
            <div class="lg:flex-1 flex items-center gap-1.5">
                <NuxtLink to="/" class="flex items-end gap-2 font-bold text-xl text-gray-900 dark:text-blue-500 text-orange-500">
                    <UIcon name="i-heroicons-chat-bubble-bottom-center-solid" class="h-10"/>
                    <span class="h-9">SIMPELWASNAKER</span>
                </NuxtLink>
            </div>
            <div class="flex items-center gap-x-8 hidden lg:flex">
                <UHorizontalNavigation :links="nav">
                    <template #badge = "{ link }">
                        <UBadge color="primary" variant="solid" size="xs">{{ link.badge }}</UBadge>
                    </template>
                </UHorizontalNavigation>
            </div>
            <div class="lg:flex-1 justify-end flex">
                <UHorizontalNavigation :links="nav">
                    <template #badge = "{ link }">
                        <UBadge color="primary" variant="solid" size="xs">{{ link.badge }}</UBadge>
                    </template>
                </UHorizontalNavigation>
            </div>
        </div>
    </header>
</template>

<script lang="ts" setup>
const nav = [
    {
        label: '',
        icon: 'i-heroicons-user-solid',
        badge: 9,
        to: '/profile'
    }
]
</script>

<style>

</style>