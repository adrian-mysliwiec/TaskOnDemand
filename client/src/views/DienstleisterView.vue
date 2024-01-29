<!--
  Screen to display designers
-->
<template>
  <div>
    <div class="row"></div>
    <div class="fit row wrap justify-center items-start content-start">
      <q-card class="q-ma-xl q-pa-md">
        <h4>Add Dienstleister</h4>
        <q-form ref="myForm" class=" ">
          <div class="row q-gutter-md">
            <q-input
              filled
              v-model="name"
              label="Designername"
              lazy-rules
              :rules="[
                (val) => (val && val.length > 0) || 'Bitte Namen angeben',
              ]"
            />

            <q-input
              filled
              v-model="country"
              label="Land"
              lazy-rules
              :rules="[
                (val) => (val !== null && val !== '') || 'Bitte Land einfügen',
                (val) =>
                  (val && val.length === 3) ||
                  'Der Ländercode muss 3stellig sein',
              ]"
            />
          </div>
          <div class="row q-gutter-md">
            <q-input
              filled
              v-model="firma"
              label="Firma"
              lazy-rules
              :rules="[
                (val) => (val && val.length > 0) || 'Bitte Firma angeben',
              ]"
            />

            <q-input
              filled
              v-model="Vorname"
              label="Vorname"
              lazy-rules
              :rules="[
                (val) => (val !== null && val !== '') || 'Bitte Land einfügen',
                (val) =>
                  (val && val.length === 3) ||
                  'Der Ländercode muss 3stellig sein',
              ]"
            />
          </div>
        </q-form>
        <div class="q-mt-md">
          <q-btn label="Senden" @click="validate()" color="primary" />
          <q-btn
            label="Reset"
            @click="reset()"
            color="primary"
            flat
            class="q-ml-sm"
          />
        </div>
      </q-card>
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue';

const myForm = ref(null);
const name = ref('');
const country = ref('');

// to reset validations:
function reset() {
  myForm.value.resetValidation();
  name.value = '';
  country.value = '';
}
</script>

<style lang="scss" scoped></style>
