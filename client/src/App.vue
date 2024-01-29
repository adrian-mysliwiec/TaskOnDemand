<script setup>
import { ref } from 'vue';

const rightDrawerOpen = ref(false);

const toggleRightDrawer = () => (rightDrawerOpen.value = !rightDrawerOpen.value);
</script>

<template>
  <q-layout view="hHh lpR fFf">
    <q-header elevated class="bg-primary text-white" height-hint="98">
      <q-toolbar>
        <!-- <q-btn class="mobile-only" dense flat round icon="menu" @click="toggleLeftDrawer" /> -->

        <q-toolbar-title class=" text-center ">
        <img src="/logo.png" style="width: 5%" class="q-mt-md"/>

          <h4 class="desktop-only text-white q-my-sm">TaskOnDemand</h4>
          <q-tabs class="desktop-only" align="center">
            <q-route-tab class="text-accent text-white text-center" to="/" label="Home" />
            <q-route-tab class="text-accent text-white" to="/table" label="Aufträge" />
            <q-route-tab class="text-accent text-white" to="/dienstleister" label="Dienstleister" />
          </q-tabs>
        </q-toolbar-title>
        <q-btn class="mobile-only" dense flat round icon="menu" @click="toggleRightDrawer" />
      </q-toolbar>
    </q-header>

    <q-drawer v-model="rightDrawerOpen" side="right" bordered>
      <q-tabs align="left" vertical>
        <q-route-tab to="/" label="Start" />
        <q-route-tab to="/table" label="Brillen" />
        <q-route-tab to="/designer" label="Designer" />
      </q-tabs>
    </q-drawer>

    <q-page-container>
      <router-view />
    </q-page-container>
  </q-layout>
</template>

<style>
@font-face {
  font-family: 'Montserrat';
  src: url('/fonts/Montserrat/Montserrat-Regular.ttf') format('truetype');
}

@font-face {
  font-family: 'Lora';
  src: url('/fonts/Lora/Lora-Regular.ttf') format('truetype');
}

@font-face {
  font-family: 'LibreBodoni';
  src: url('/fonts/LibreBodoni/LibreBodoni-Regular.ttf') format('truetype');
}

* {
  font-family: 'Montserrat';
}
</style>
