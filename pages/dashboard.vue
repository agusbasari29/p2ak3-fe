<template>
  <div class="pt-3">
    <div class="flex flex-col grid grid-cols-10 gap-3">
      <div class="col-span-8">
        <span class="text-2xl font-bold">Admin Dashboard <br/></span>
      </div>
      <div class="col-span-2 justify-end">
        <UButton >
          <UIcon name="i-heroicons-cloud-arrow-down-solid" class="h-5 w-5" />
          Download PDF
        </UButton>
      </div>
    </div>
    <UBreadcrumb class="p b-5 pt-5" divider=">" :links="[{label: 'Home', to:'/', icon: 'i-heroicons-home-solid'},{label: 'Dashboard', to:'/dashboard', icon: 'i-heroicons-squares-2x2-solid'}]" />
    <div class="flex flex-col grid grid-cols-9 gap-3 pt-5 pb-3">
      <div class="col-span-3">  
        <UCard>
          <div class="flex flex-col grid grid-cols-9 gap-1">
            <div class="col-span-3">
              <UBadge class="font-bold text-6xl" color="indigo" variant="solid" :rounded="true">
                <UIcon name="i-heroicons-arrows-right-left-solid text-indigo-800"></UIcon>
              </UBadge>
            </div>
            <div class="col-span-6">
              <div>
                <span class="text-3xl font-bold">1020</span>
              </div>
              <div>
                <span class="text-xl">Job Order</span>
              </div>
            </div>
          </div>
        </UCard>
      </div>
      <div class="col-span-3">  
        <UCard>
          <div class="flex flex-col grid grid-cols-9 gap-1">
            <div class="col-span-3">
              <UBadge class="font-bold text-6xl" color="amber" variant="solid" :rounded="true">
                <UIcon name="i-heroicons-building-office-2-solid text-amber-800"></UIcon>
              </UBadge>
            </div>
            <div class="col-span-6">
              <div>
                <span class="text-3xl font-bold">1256</span>
              </div>
              <div>
                <span class="text-xl">Perusahaan</span>
              </div>
            </div>
          </div>
        </UCard>
      </div>
      <div class="col-span-3">  
        <UCard>
          <div class="flex flex-col grid grid-cols-9 gap-1">
            <div class="col-span-3">
              <UBadge class="font-bold text-6xl" color="rose" variant="solid" :rounded="true">
                <UIcon name="i-heroicons-users-solid text-rose-800"></UIcon>
              </UBadge>
            </div>
            <div class="col-span-6">
              <div>
                <span class="text-3xl font-bold">1845</span>
              </div>
              <div>
                <span class="text-xl">Total PIC</span>
              </div>
            </div>
          </div>
        </UCard>
      </div>
    </div>
    <div class="flex flex-col grid grid-cols-10 gap-3 pt-3 pb-3">
      <div class="col-span-8">
        <div class="flex flex-col pb-5">
          <UCard>
            <template #header>
              <h2 class="font-semibold text-xl text-gray-900 dark:text-white leading-tight">
                Job Order Terakhir
              </h2>
            </template>
            <Orders />
            <template #footer>
              <div>
                <span class="text-sm leading-5">
                  Showing
                  <span class="font-medium">{{ pageFrom }}</span>
                  to
                  <span class="font-medium">{{ pageTo }}</span>
                  of
                  <span class="font-medium">{{ pageTotal }}</span>
                  results
                </span>
              </div>
        
              <div class="flex flex-wrap justify-between items-center">
                <UPagination
                v-model="page"
                :page-count="pageCount"
                :total="pageTotal"
                :ui="{
                  wrapper: 'flex items-center gap-1',
                  rounded: '!rounded-full min-w-[32px] justify-center',
                  default: {
                    activeButton: {
                      variant: 'outline'
                    }
                  }
                }"
                />
              </div>
            </template>
          </UCard>
        </div>
        <div>
          <UCard class="flex flex-col pb-5">
            <template #header>
              <span class="font-bold">Orders</span>
            </template>
            <Chart />
          </UCard>
        </div>
      </div>
      <div class="col-span-2">
        <UCard>
          <template #header>
            <h2 class="font-semibold text-xl text-gray-900 dark:text-white leading-tight">Progress</h2>
          </template>
          <div class="flex flex-col grid grid-cols-9 gap-3">
            <div class="col-span-8 font-bold text-sm -mx-3 py-3">
              <div class="py-3"><h5>Daftar Progress</h5></div>
              <div class="py-3"><h5>Daftar Progress</h5></div>
              <div class="py-3"><h5>Daftar Progress</h5></div>
              <div class="py-3"><h5>Daftar Progress</h5></div>
              <div class="py-3"><h5>Daftar Progress</h5></div>
              <div class="py-3"><h5>Daftar Progress</h5></div>
            </div>
            <div class="col-span-1 font-bold text-sm -mx-3 py-3">
              <div class="py-3"><h5><UIcon name="i-heroicons-ellipsis-vertical-solid"></UIcon></h5></div>
              <div class="py-3"><h5><UIcon name="i-heroicons-ellipsis-vertical-solid"></UIcon></h5></div>
              <div class="py-3"><h5><UIcon name="i-heroicons-ellipsis-vertical-solid"></UIcon></h5></div>
              <div class="py-3"><h5><UIcon name="i-heroicons-ellipsis-vertical-solid"></UIcon></h5></div>
              <div class="py-3"><h5><UIcon name="i-heroicons-ellipsis-vertical-solid"></UIcon></h5></div>
              <div class="py-3"><h5><UIcon name="i-heroicons-ellipsis-vertical-solid"></UIcon></h5></div>
            </div>
          </div>
          <template #footer>

          </template>
        </UCard>
      </div>
    </div>
  </div>
</template>

<script lang="ts" setup>
const page = ref(1)
const pageCount = ref(10)
const pageTotal = ref(200) // This value should be dynamic coming from the API
const pageFrom = computed(() => (page.value - 1) * pageCount.value + 1)
const pageTo = computed(() => Math.min(page.value * pageCount.value, pageTotal.value))
</script>

<style>

</style>