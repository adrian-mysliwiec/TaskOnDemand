import { defineStore } from 'pinia';
import { ref } from 'vue';
import axios from 'axios';

export const useDienstleisterStore = defineStore('dienstleisterStore', () => {
  const dienstleister = ref([]);

  const fetchData = async () => {
    const ret = await axios.get('http://localhost:3000/dienstleister');
    dienstleister.value = ret.data;
  };
  const postDienstleister = async () => {
     await axios.get(`http://localhost:3000/dienstleister`);
    
  };

 

  return {
    dienstleister,
    fetchData,
    postDienstleister,
  };
});
