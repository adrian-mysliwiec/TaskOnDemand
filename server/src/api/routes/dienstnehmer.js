import express from 'express';
import {
  getDienstnehmer,
  // changeCollection,
} from '../../controller/dienstnehmer.js';

const router = express.Router();

// route to get all glasses
router.get('/', getDienstnehmer);

export default router;
