import asyncHandler from 'express-async-handler';
import * as model from '../model/dienstnehmer.js';

export const getDienstnehmer = asyncHandler(async (req, res) => {
  res.status(200).json(await model.getDienstnehmer());
});

// export const changeCollection = asyncHandler(async (req, res) => {
//   res.status(200).json(await model.changeCollection(req.params.id, req.body));
// });
