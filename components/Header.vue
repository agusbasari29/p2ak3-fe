<template>
    <header class="bg-background/75 backdrop-blur border-b -mb-px-5 pt-5 sticky top-0 z-50 border-gray-200 h-20 dark:border-gray-800">
        <div class="mx-auto px-4 sm:px-6 lg:px-8 max-w-7xl flex items-center justify-between gap-3 h-[--header-height]">
            <div class="lg:flex-1 flex items-center gap-1.5">
                <NuxtLink to="/" class="flex items-end gap-2 font-bold text-2xl text-gray-900 dark:text-blue-200 text-blue-600">
                    <UIcon name="i-heroicons-chat-bubble-bottom-center-solid" class="h-10"/>
                    <span class="h-9">SIMPELWASNAKER</span>
                </NuxtLink>
            </div>
            <div class="flex items-center gap-x-8 hidden lg:flex">
                <UInput
                    v-model="q"
                    name="q"
                    placeholder="Search..."
                    icon="i-heroicons-magnifying-glass-20-solid"
                    autocomplete="off"
                    :ui="{ icon: { trailing: { pointer: '' } } }"
                >
                    <template #trailing>
                        <UButton
                            v-show="q !== ''"
                            color="gray"
                            variant="link"
                            icon="i-heroicons-x-mark-20-solid"
                            :padded="false"
                            @click="q = ''"
                        />
                    </template>
                </UInput>
            </div>
            <div class="flex items-center justify-end lg:flex-1 gap-3.5">
                <!-- <UHorizontalNavigation :links="nav" /> -->
                <div class="pt-2">
                  <UChip text="3" size="xl">
                    <UButton variant="link" icon="i-heroicons-chat-bubble-left-ellipsis-solid" to="/" :padded="false"/>
                  </UChip>
                </div>
                <div class="pt-2">
                  <UChip text="10" size="xl">
                    <UButton variant="link" icon="i-heroicons-bell-solid" to="/" :padded="false"/>
                  </UChip>  
                </div>
                <DarkLight />
                <UDropdown :items="items">
                    <UAvatar name="avatar" src="https://avatars.githubusercontent.com/u/17192048?v=4" />
                </UDropdown>
            </div>
        </div>
    </header>
</template>

<script lang="ts" setup>
import { DarkLight } from '#components';

const q = ref('')
const nav = [
    {
        label: '',
        icon: 'i-heroicons-bell-solid',
        to: '/notify',
        chip: {
          label: 'New',
            color: 'green',
            count: 10
        }
    },{
        label: '',
        icon: 'i-heroicons-user-solid',
        to: '/login',
        chip: {
          label: 'New',
            color: 'green',
            count: 10
        }
    }
]
const items = [
  [{
    label: 'Profile',
    avatar: {
      src: 'https://avatars.githubusercontent.com/u/17192048?v=4'
    }
  }], [{
    label: 'Edit',
    icon: 'i-heroicons-pencil-square-20-solid',
    shortcuts: ['E'],
    click: () => {
      console.log('Edit')
    }
  }, {
    label: 'Duplicate',
    icon: 'i-heroicons-document-duplicate-20-solid',
    shortcuts: ['D'],
    disabled: true
  }], [{
    label: 'Archive',
    icon: 'i-heroicons-archive-box-20-solid'
  }, {
    label: 'Move',
    icon: 'i-heroicons-arrow-right-circle-20-solid'
  }], [{
    label: 'Delete',
    icon: 'i-heroicons-trash-20-solid',
    shortcuts: ['⌘', 'D']
  }]
]
</script>

<style>

</style>