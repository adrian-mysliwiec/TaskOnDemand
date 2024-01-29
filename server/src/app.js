import express from 'express';
import morgan from 'morgan';
import dotenv from 'dotenv';
import cors from 'cors';
import path from 'path';
import testRoute from './api/routes/test.js';
import designRoutes from './api/routes/dienstleister.js';
import auftraegeRoutes from './api/routes/auftraege.js';
import dienstnehmerRoutes from './api/routes/dienstnehmer.js';
import { notFound, errorHandler } from '../middleware/errorHandler.js';

dotenv.config();

const dirname = path.resolve();

const app = express();

app.use(morgan('dev'));
app.use(cors());

app.use(express.static(path.join(dirname, '/public')));

app.use(express.json());

app.use('/test', testRoute);
app.use('/dienstleister', designRoutes);
app.use('/auftraege', auftraegeRoutes);
app.use('/dienstnehmer', dienstnehmerRoutes);

app.use(notFound);
app.use(errorHandler);
const PORT = process.env.PORT || 5000;

app.listen(PORT, () => console.log(`Server is running on port ${PORT}`));
