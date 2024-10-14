import { NextResponse } from 'next/server';
import pool from '../../../../lib/db';
import bcrypt from 'bcryptjs';
import jwt from 'jsonwebtoken';

export async function POST(request: Request) {
  const { email, password } = await request.json();

  try {
    const client = await pool.connect();
    const query = 'SELECT * FROM users WHERE email = $1';
    const values = [email];
    const result = await client.query(query, values);
    client.release();

    if (result.rows.length === 0) {
      return NextResponse.json({ error: 'Usuário não encontrado.' }, { status: 404 });
    }

    const user = result.rows[0];
    const isMatch = await bcrypt.compare(password, user.senha);

    if (!isMatch) {
      return NextResponse.json({ error: 'Senha incorreta.' }, { status: 401 });
    }

    const token = jwt.sign({ userId: user.id, email: user.email }, 'seu_segredo_jwt', { expiresIn: '1h' });

    return NextResponse.json({ message: 'Login realizado com sucesso!', token });
  } catch (error) {
    console.error('Erro ao autenticar usuário:', error);
    return NextResponse.json({ error: 'Erro ao autenticar usuário.' }, { status: 500 });
  }
}
