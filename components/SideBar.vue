<template>
    <section class="w-280 h-full fixed">
        <UVerticalNavigation :links="links">
            <template>

            </template>
        </UVerticalNavigation>
  </section>
</template>

<script lang="ts" setup>
const route = useRoute()
const links = [
    [
        {
            label: 'SIMPELWASNAKER',
            icon: 'i-heroicons-chat-bubble-bottom-center-solid',
            to: '/'
        }
    ],
    [   
        {
            label: 'Dashboard Admin',
            type: 'brand',
            to: '/dashboard'
        },
        {
            label: 'Data Job Order',   
            type: 'orders',
            to: '/orders'
        },
        {
            label: 'Data Surat',
            type: 'letter',
            to: '/letter'
        },
        {
            label: 'Tracking Progress',
            type: 'progress',
            to: '/progress'
        },
        {
            label: 'Ruang Diskusi',
            type: 'discussion',
            to: '/discussion'
        },
        {
            label: 'Data Alat K3',
            type: 'tools',
            icon: 'i-heroicons-users-solid',
            to: '/tools'
        }
    ],
    [
        {
            label: 'Settings',
            icon: 'i-heroicons-cog-solid',
            type: 'settings',
            to: '/settings'
        },
        {
            label: 'Logout',
            type: 'logout',
            icon: 'i-heroicons-arrow-left-circle-solid',
            to: '/logout'
        }
    ]
]
</script>

<style scoped>
</style>