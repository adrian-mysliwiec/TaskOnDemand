import { query } from '../db/index.js';

export const getDienstnehmer = async () => {
  const { rows } = await query('SELECT * from "Dienstnehmer"');
  return rows;
};
