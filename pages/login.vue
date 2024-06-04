<template>
  <UForm :schema="schema" :state="state" class="space-y-4 fixed w-80 mt-20" @submit="onSubmit">
    <div class="text-center font-black text-4xl text-primary">Login</div>
    <UDivider icon="i-heroicons-user-circle-solid text-primary" />
    <UFormGroup label="Username" name="username">
      <UInput v-model="state.username" placeholder="Username" />
    </UFormGroup>

    <UFormGroup label="Password" name="password">
      <UInput v-model="state.password" type="password" placeholder="Password" />
    </UFormGroup>

    <UButton type="submit" class="font-bold text-center">Login
    </UButton>
    <UDivider>
      <DarkLight />
    </UDivider>
    <div class="text-center font-bold text-primary text-md">SIMRU - SIMPEL WASNAKER</div>
    <div class="text-center font-bold text-primary text-sm position-bottom">&copy;Asteria Technology DevTeams</div>
  </UForm>
</template>

<script lang="ts" setup>
import { object, string, type InferType } from 'yup'
import type { FormSubmitEvent } from '#ui/types'
definePageMeta({
    layout: 'login'
})


const schema = object({
  username: string().required('Required'),
  password: string()
    .min(8, 'Must be at least 8 characters')
    .required('Required')
})

type Schema = InferType<typeof schema>

const state = reactive({
  username: undefined,
  password: undefined
})

async function onSubmit (event: FormSubmitEvent<Schema>) {
  // Do something with event.data
  console.log(event.data)
}
</script>

<style>

</style>