import asyncHandler from 'express-async-handler';
import * as model from '../model/dienstleister.js';

export const getDienstleister = asyncHandler(async (req, res) => {
  res.status(200).json(await model.getDienstleister());
});

export const createDesigner = asyncHandler(async (req, res) => {
  res.status(200).json(await model.createDesigner(req.body));
});
