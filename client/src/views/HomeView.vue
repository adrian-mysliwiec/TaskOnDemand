<script setup>
import { storeToRefs } from 'pinia';
import { useMyStore } from '../stores/myStore';

const myStore = useMyStore();
const { message } = storeToRefs(myStore);
</script>

<template>
  <div class="column items-center q-mt-md"><span class="text-h4">Home</span><br /><span>{{ message }}</span></div>
</template>
