import express from 'express';
import {
  getDienstleister,
  createDesigner,
} from '../../controller/dienstleister.js';

const router = express.Router();

// get all designers
router.get('/', getDienstleister);
// create a new designer
router.post('/', createDesigner);

export default router;
