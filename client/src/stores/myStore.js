import { defineStore } from 'pinia';

// ------ option version -------
export const useMyStore = defineStore('myStore', {
  state: () => ({ message: 'Viel Erfolg!' }),
  getters: {},
  actions: {},
});

// ------ setup version -------
// import { ref } from 'vue';

// export const useMyStore = defineStore('myStore', () => {
//   const message = ref('Viel Erfolg!');

//   return { message };
// });
