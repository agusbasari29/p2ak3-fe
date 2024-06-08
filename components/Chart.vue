<template>
    <Bar :data="chartData" :options="chartOptions" />
</template>

<script lang="ts" setup>
import {
    Chart as ChartJS,
    Title,
    Tooltip,
    Legend,
    BarElement,
    CategoryScale,
    LinearScale
} from 'chart.js'
import { Bar } from 'vue-chartjs'
import { ref } from 'vue'

ChartJS.register(CategoryScale, LinearScale, Title, Tooltip, Legend, BarElement)

const chartData = ref({
    labels: ['January', 'February', 'March', 'April', 'May', 'june', 'july', 'august', 'september', 'october', 'november', 'december'],
    datasets: [{
        label: 'Chart Orders',
        backgroundColor: '#f87979',
        data: [40, 20, 12, 50, 10, 30, 35, 50, 27, 44, 28, 19],
    }]
})

const chartOptions = ref({
    responsive: true,
    maintainAspectRatio: false,
})
</script>

<style>

</style>