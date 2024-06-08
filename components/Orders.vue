<template>
    <div class="flex items-center justify-between gap-3 px-4 py-1">
      <UInput icon="i-heroicons-magnifying-glass-20-solid" placeholder="Search..." />
    </div>
    <UTable :columns="columns" :rows="orders">
        <template #status-data="{ row }">
            <UBadge v-if="row.status === 'completed'" color="green">Completed</UBadge>
            <UBadge v-if="row.status === 'process'" color="amber">Process</UBadge>
            <UBadge v-if="row.status === 'pending'" color="orange">Pending</UBadge>
        </template>
    </UTable>
</template>

<script lang="ts" setup>
const columns = [
    {
        key: 'pengguna',
        label: 'Pengguna'
    },
    {
        key: 'time',
        label: 'Waktu Pemeriksaan'
    },
    {
        key: 'status',
        label: 'Status'
    }
]

const orders = [
    {
        pengguna: 'Andika',
        time: '2024-07-06 14:00',
        status: 'completed'
    },
    {
        pengguna: 'Agus',
        time: '2024-07-06 14:00',
        status: 'pending'
    },
    {
        pengguna: 'Ernando',
        time: '2024-07-06 14:00',
        status: 'process'
    },
    {
        pengguna: 'Ahmad',
        time: '2024-07-06 14:00',
        status: 'process'
    },
    {
        pengguna: 'Abbas',
        time: '2024-07-06 14:00',
        status: 'completed'
    },
    {
        pengguna: 'Purwandaru',
        time: '2024-07-06 14:00',
        status: 'pending'
    },
    {
        pengguna: 'Bilal',
        time: '2024-07-06 14:00',
        status: 'completed'
    },
    {
        pengguna: 'Huda',
        time: '2024-07-06 14:00',
        status: 'pending'
    },
    {
        pengguna: 'Indra',
        time: '2024-07-06 14:00',
        status: 'process'
    },
    {
        pengguna: 'Jaya',
        time: '2024-07-06 14:00',
        status: 'completed'
    },
]

</script>

<style>

</style>