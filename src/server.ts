import { logger, startServer } from 'armold-test';
import routes from './components';
import { connectDb } from './config/db/db';
import { armoldDb } from './config/db/knexfile';

process.on('uncaughtException', (e) => {
  logger.error(e);
  process.exit(1);
});
process.on('unhandledRejection', (e) => {
  logger.error(e);
  process.exit(1);
});

connectDb(armoldDb);
startServer(+(process.env.HTTP_PORT || 8080), routes);
