<template>
    <main class="min-h-[calc(100vh-var(--header-height))]">
        <div class="mx-auto px-4 sm:px-6 lg:px-8 max-w-7xl">
            <div class="flex flex-col lg:grid lg:grid-cols-10 lg:gap-8">
                <div class="lg:col-span-2">
                    <aside class="hidden overflow-y-auto lg:block lg:max-h-[calc(100vh-var(--header-height))] lg:sticky lg:top-[--header-height] py-8 lg:px-4 lg:-mx-4">
                        <div class="relative">
                            <!-- <div class="mb-3 lg:mb-6">

                            </div> -->
                            <nav class="space-y-3">
                                <div class="w-full flex flex-col space-y-3">
                                    <UVerticalNavigation :links="nav" />
                                </div>

                            </nav>
                        </div>
                    </aside>
                </div>
                <div class="lg:col-span-8">
                            <NuxtPage />
                </div>
            </div>
        </div>
    </main>
</template>

<script lang="ts" setup>
const nav = [
    [
        {
            label: 'Dashboard',
            icon: 'i-heroicons-squares-2x2-solid',
            to: '/dashboard',
            exact: true,
        },
        {
            label: 'Data Job Order',
            icon: 'i-heroicons-newspaper-solid',
            to: '/job-order',
        },
        {
            label: 'Data Surat',
            icon: 'i-heroicons-document-text-solid',
            to: '/data-surat',
        },
        {
            label: 'Tracking Progres',
            icon: 'i-heroicons-document-magnifying-glass-solid',
            to: '/tracking',
        },
        {
            label: 'Ruang Diskusi',
            icon: 'i-heroicons-chat-bubble-left-right-16-solid',
            to: '/diskusi',
        },
        {
            label: 'Data Alat K3',
            icon: 'i-heroicons-wrench-screwdriver-solid',
            to: '/alat-k3',
        },
    ],[
        {
            label: 'Settings',
            icon: 'i-heroicons-cog-solid',
            to: '/setting',
        },
        {
            label: 'Logout',
            icon: 'i-heroicons-arrow-left-start-on-rectangle-solid',
            to: '/logout',
        },
    ]
]
</script>

<style>

</style>