// eslint-disable-next-line
import colors from 'colors';
// REST Service
// error handler functions

export const errorHandler = (err, _req, res, _next) => {
  console.log(`Error: ${err.stack}`.bgRed);
  res.status(500).send(err.message);
};

export const notFound = (req, res) => {
  console.log(`Error 404: Route not found ${req.method} ${req.originalUrl}`.red);
  res.status(404).end();
};
