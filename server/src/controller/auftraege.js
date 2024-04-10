import asyncHandler from 'express-async-handler';
import * as model from '../model/auftraege.js';

export const getAuftraege = asyncHandler(async (req, res) => {
  res.status(200).json(await model.getAuftraege());
});;
export const getAuftraegeById = asyncHandler(async (req, res) => {
  res
    .status(200)
    .json(await model.getAuftraegeById(req.params.Auftragsersteller));
});
export const createAuftrag = asyncHandler(async (req, res) => {
  res.status(200).json(await model.createAuftrag(req.body));
});
export const changeAuftrag = asyncHandler(async (req, res) => {
  res
    .status(200)
    .json(await model.changeAuftrag(req.params.AnzeigeNr, req.body));
});
export const delAuftrag = asyncHandler(async (req, res) => {
  res
    .status(200)
    .json(await model.delAuftrag(req.params.AnzeigeNr));
});
export const AuftragDetails = asyncHandler(async (req, res) => {
  res.status(200).json(await model.AuftragDetails(req.params.AnzeigeNr));
});
