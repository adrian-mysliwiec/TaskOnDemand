import { query } from '../db/index.js';

export const getAuftraege = async () => {
  const { rows } = await query('SELECT * from "Arbeitsauftrag" ');
  return rows;
};

export const createAuftrag = async (newData) => {
  const { rows } = await query(
    'INSERT INTO "Arbeitsauftrag"("Stundenlohn", "Datum", "Status", "Uhrzeit", "Ort", "Beschreibung","TelNummer","Dauer","Strasse","PLZ") VALUES ($1, $2, $3, $4, $5, $6,$7,$8,$9,$10) returning *',
    [
      newData.Stundenlohn,
      newData.Datum,
      newData.Status,
      newData.Uhrzeit,
      newData.Ort,
      newData.Beschreibung,
      newData.TelNummer,
      newData.Dauer,
      newData.Strasse,
      newData.PLZ,
    ],
  );
  return rows;
};
export const changeAuftrag = async (AnzeigeNr, newData) => {
  const { rows } = await query(
    'update "Arbeitsauftrag" set "Uhrzeit"=$2 where "AnzeigeNr"= $1 returning *',
    [AnzeigeNr, newData.Uhrzeit],
  );
  return rows;
};
export const delAuftrag = async (AnzeigeNr) => {
  const { rows } = await query(
    'delete from "Arbeitsauftrag" where "AnzeigeNr"=$1 returning *',
    [AnzeigeNr],
  );
  return rows;
};
export const AuftragDetails = async (AnzeigeNr) => {
  const { rows } = await query(
    'select * from "Arbeitsauftrag" where "AnzeigeNr"=$1',
    [AnzeigeNr],
  );
  return rows[0];
};
