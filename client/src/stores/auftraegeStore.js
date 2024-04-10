import { defineStore } from 'pinia';
import { ref } from 'vue';
import axios from 'axios';

export const useAuftraegeStore = defineStore('auftraegeStore', () => {
  const auftraege = ref([]);
  const auftraegeByID = ref([]);
  const detail = ref({});
  const isDienstleister = ref(false);

  const fetchData = async () => {
    const ret = await axios.get('http://localhost:3000/auftraege');
    auftraege.value = ret.data;
  };
  const fetchDataByID = async (Auftragsersteller) => {
    console.log(Auftragsersteller);
    const ret = await axios.get(
      `http://localhost:3000/auftraege/ByID/${Auftragsersteller}`,
    );
    auftraegeByID.value = ret.data;
    console.log(auftraegeByID.value);
  };
  const AuftragDetails = async (AnzeigeNr) => {
    const ret = await axios.get(`http://localhost:3000/auftraege/${AnzeigeNr}`);
    detail.value = ret.data;
  };

  const delAuftrag = async (AnzeigeNr) => {
    await axios.delete(`http://localhost:3000/auftraege/${AnzeigeNr}`);
    fetchData();
  };
  const postAuftrag = async (
    Stundenlohn,
    Datum,
    Uhrzeit,
    Ort,
    Beschreibung,
    TelNummer,
    Dauer,
    Strasse,
    PLZ,
  ) => {
    await axios.post(`http://localhost:3000/auftraege`, {
      Stundenlohn: Stundenlohn,
      Datum: Datum,
      Status: 'offen',
      Uhrzeit: Uhrzeit,
      Ort: Ort,
      Beschreibung: Beschreibung,
      TelNummer: TelNummer,
      Dauer: Dauer,
      Strasse: Strasse,
      PLZ: PLZ,
    });
    fetchData();
  };

  return {
    auftraege,
    fetchData,
    delAuftrag,
    postAuftrag,
    AuftragDetails,
    detail,
    isDienstleister,
    auftraegeByID,
    fetchDataByID,
  };
});
