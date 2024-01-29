import { defineStore } from 'pinia';
import { ref } from 'vue';
import axios from 'axios';
// ------ option version -------
export const filmsStore = defineStore('filmsStore', () => {
  const films = ref([]);
  const poster = ref({});
  const getFilms = async () => {
    const res = await axios.get('http://localhost:3000/films');
    films.value = res.data;
  };
  const delFilms = async (mid) => {
    await axios.delete(`http://localhost:3000/films/${mid}`);
    getFilms();
  };
  const patchFilms = async (data) => {
    await axios.patch(`http://localhost:3000/films/${data.mid}`, {
      popularity: data.popularity,
    });
    getFilms();
    };
    const getFilmPoster = async (mid) => {
      const res = await axios.get(`http://localhost:3000/films/${mid}`);
      poster.value = res.data;
    };
  return { films, getFilms, delFilms, patchFilms, getFilmPoster, poster };
});

// ------ setup version -------
// import { ref } from 'vue';

// export const useMyStore = defineStore('myStore', () => {
//   const message = ref('Viel Erfolg!');

//   return { message };
// });
