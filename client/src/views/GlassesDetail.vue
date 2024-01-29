<!--
  Screen to display one glass with all details
-->
<template>
  <div class="row">
    <div class="col-12 col-md-6">
      <h3 class="text-center">{{ store.detail.name }}</h3>
      <q-img :src="`/images/coll/${store.detail.image}`"></q-img>
    </div>
    <div class="col-12 col-md-6 q-mt-xl q-px-md">
      <div class="text-body1">Designer: {{ store.detail.designername }}</div>
      <div class="text-body1">Material: {{ store.detail.material }}</div>
      <div class="text-body1">Farbe: {{ store.detail.color }}</div>
      <h4>Preis: {{ Number(store.detail.price).toFixed(2) }}</h4>
    </div>
  </div>
</template>

<script setup>

// const props = defineProps({ id: String });

// store.fetchDetail(props.id);
</script>

<style lang="scss" scoped></style>
