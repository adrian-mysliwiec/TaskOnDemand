import express from 'express';
import {
  getAuftraege,
  createAuftrag,
  changeAuftrag,
  delAuftrag,
  AuftragDetails,
} from '../../controller/auftraege.js';

const router = express.Router();

// get all designers
router.get('/', getAuftraege);
router.get('/:AnzeigeNr', AuftragDetails);
// create a new designer
router.post('/', createAuftrag);
router.patch('/:AnzeigeNr', changeAuftrag);
router.delete('/:AnzeigeNr', delAuftrag);

export default router;
