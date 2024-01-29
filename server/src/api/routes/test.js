import express from 'express';
import asyncHandler from 'express-async-handler';
import { query } from '../../db/index.js';

const router = express.Router();

router.get(
  '/',
  asyncHandler(async (req, res) => {
    const { rows } = await query("SELECT 'It works' as test");
    res.status(200).json(rows);
  }),
);

export default router;
