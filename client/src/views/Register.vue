<template>
  <q-page class="row justify-center items-center" style="min-height: 500px">
    <div class="column">
      <div class="row justify-center items-center">
        <h5 class="text-h5 text-black q-my-md">Registrieren</h5>
      </div>
      <div class="row">
        <q-card square bordered class="q-pa-lg shadow-24">
          <q-card-section>
            <q-form class="q-gutter-md">
              <input
                type="radio"
                id="one"
                value="Auftraggeber"
                v-model="picked"
              />
              <label for="one">Auftraggeber</label>

              <input
                type="radio"
                id="two"
                value="Auftragnehmer"
                v-model="picked"
              />
              <label for="two">Auftragnehmer</label>
              <q-input
                square
                clearable
                v-model="email"
                type="email"
                label="Email"
              ></q-input>
              <q-input
                square
                clearable
                v-model="vorname"
                type="text"
                label="Vorname"
              ></q-input>
              <q-input
                square
                clearable
                v-model="nachname"
                type="username"
                label="Nachname"
              >
              </q-input>
              <q-input
                square
                label="Telefonnummer"
                clearable
                v-model="tel"
                type="number"
              >
              </q-input>
              <q-input
                v-if="picked == 'Auftragnehmer'"
                square
                label="Firma"
                clearable
                v-model="firma"
                type="text"
              >
              </q-input>
              <q-input
                v-if="picked == 'Auftragnehmer'"
                square
                label="Beschreibung"
                clearable
                v-model="beschreibung"
                type="textarea"
              >
              </q-input>
              <q-input
                square
                clearable
                v-model="password"
                type="password"
                label="Password"
              ></q-input>
            </q-form>
          </q-card-section>
          <q-card-actions class="q-px-md">
            <q-btn
              unelevated
              size="lg"
              class="full-width mytoolbar"
              label="Registrieren"
              @click="newRegistration()"
              to="/"
            />
          </q-card-actions>
        </q-card>
      </div>
    </div>
  </q-page>
</template>

<script setup>
import { ref } from 'vue';
// import { onTimeStore } from '@/stores/ontime.js';
// const store = onTimeStore();
const email = ref('');
const password = ref('');
const nachname = ref('');
const vorname = ref('');
const tel = ref('');
const firma = ref('');
const beschreibung = ref('');
// const categories = ref(['Auftraggeber', 'Auftragnehmer']);
const picked = ref('Auftraggeber');

const newRegistration = () => {
  store.postUser(
    {
      vorname: vorname.value,
      nachnamen: nachname.value,
      email: email.value,
      tel: tel.value,
      firma: firma.value,
      rolle: 'Schüler',
    },
    (vorname.value = ''),
    (nachname.value = ''),
    (email.value = ''),
    (geburtsdatum.value = ''),
    (klasse.value = ''),
  );
};
</script>

<style>
.q-card {
  width: 360px;
}
.mytoolbar {
  background: #ea3c12;
}
</style>
