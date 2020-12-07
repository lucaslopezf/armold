import dotenv from 'dotenv';
dotenv.config();

export const armoldDb = {
  client: 'mysql',
  connection: {
    host: process.env.DB_ARMOLD_HOST,
    user: process.env.DB_ARMOLD_USERNAME,
    password: process.env.DB_ARMOLD_PASSWORD,
    port: process.env.DB_ARMOLD_PORT,
    database: process.env.DB_ARMOLD_NAME,
  },
  pool: {
    min: process.env.DB_ARMOLD_POOL_MIN || 2,
    max: process.env.DB_ARMOLD_POOL_MAX || 10,
  },
  debug: !!process.env.DB_DEBUG,
};
