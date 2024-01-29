import { defineStore } from 'pinia';
import { ref } from 'vue';
import axios from 'axios';
// ------ option version -------
export const useMyStore = defineStore('myStore', () => {
  const glasses = ref([]);
  const getAll = async () => {
    const ref = await axios.get('http://localhost:3000/glasses');
    glasses.value = ref.data;
  };
  return { glasses, getAll };
});

// ------ setup version -------
// import { ref } from 'vue';

// export const useMyStore = defineStore('myStore', () => {
//   const message = ref('Viel Erfolg!');

//   return { message };
// });
