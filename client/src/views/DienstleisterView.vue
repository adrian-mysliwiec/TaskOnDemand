<template>
  <q-page class="row justify-center items-center" style="min-height: 500px">
    <div class="column">
      <div class="row justify-center">
        <h5 class="text-h3 text-grey q-my-lg">Login</h5>
      </div>
      <div class="row">
        <q-card square bordered class="q-pa-lg shadow-24">
          <q-card-section>
            <q-form class="q-gutter-md">
              <q-input
                square
                clearable
                v-model="email"
                type="email"
                label="Email"
                ><template v-slot:prepend> <q-icon name="email" /> </template
              ></q-input>
              <q-input
                square
                clearable
                v-model="password"
                type="password"
                label="Password"
                ><template v-slot:prepend> <q-icon name="lock" /> </template
              ></q-input>
            </q-form>
          </q-card-section>
          <q-card-actions class="q-px-md">
            <q-btn
              unelevated
              size="lg"
              class="full-width bg-primary"
              label="Login"
            />
          </q-card-actions>
          <q-card-section class="text-center q-pa-none">
            Noch kein Kunde? Jetzt
            <q-btn
              flat
              color="primary"
              label="Registrieren"
              to="/register"
              class="q-pa-none"
            />
          </q-card-section>
        </q-card>
      </div>
    </div>
  </q-page>
</template>

<script setup>
import { ref } from 'vue';

const email= ref('');
const password= ref('');
</script>

<style>
.q-card {
  width: 360px;
}
.mytoolbar {
  background: lightblue;
}
</style>
