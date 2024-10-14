import { NextResponse } from 'next/server';
import pool from '../../../../lib/db';
import bcrypt from 'bcryptjs';

export async function POST(request: Request) {
  const { username, email, password } = await request.json();
  
  const hashedPassword = await bcrypt.hash(password, 10);

  try {
    const client = await pool.connect();
    const query = 'INSERT INTO users (username, email, senha) VALUES ($1, $2, $3)';
    const values = [username, email, hashedPassword];

    await client.query(query, values);
    client.release();

    return NextResponse.json({ message: 'Usuário registrado com sucesso!' });
  } catch (error) {
    console.error('Erro ao registrar usuário:', error);
    return NextResponse.json({ error: 'Erro ao registrar usuário.' }, { status: 500 });
  }
}
