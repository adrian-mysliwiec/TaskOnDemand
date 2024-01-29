import { query } from '../db/index.js';

export const getDienstleister = async () => {
  const { rows } = await query('SELECT * from "Dienstleister"');
  return rows;
};

export const createDesigner = async (newData) => {
  const { rows } = await query(
    'insert into "Dienstleister" ("Firma", "Beschreibung", "Stundenlohn","Vorname","Nachname","Mail","TelNummer") VALUES ($1,$2,$3,$4,$5,$6,$7) returning *',
    [
      newData.Firma,
      newData.Beschreibung,
      newData.Stundenlohn,
      newData.Vorname,
      newData.Mail,
      newData.Nachname,
      newData.TelNummer,
    ],
  );
  return rows;
};
