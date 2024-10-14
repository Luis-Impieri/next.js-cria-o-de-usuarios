import { Pool } from 'pg';

const pool = new Pool({
  user: 'meu_usuario',
  host: 'localhost',
  database: 'sign_up',
  password: 'senhateste',
  port: 5432,
});

export default pool;
