// REST Service
// error handler functions
import 'colors';

// eslint-disable-next-line no-unused-vars
export const errorHandler = (err, req, res, next) => {
  console.log('ERROR on Server'.bgRed);
  console.log(err.stack.bgRed);
  res.status(500).end();
};

export const notFound = (req, res) => {
  console.log(`Error 404: Route not found ${req.method} ${req.originalUrl}`.red);
  res.status(404).end();
};
