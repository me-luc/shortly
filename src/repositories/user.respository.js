import db from "../config/database.js";
import registerError from "../../logs/log-writer.js";

export async function checkIfEmailExists(email) {
	try {
		const emailFound = await db.query(
			`SELECT * FROM users WHERE email = $1`,
			[email]
		);

		return emailFound;
	} catch (error) {
		registerError(
			"at function -checkIfEmailExists on ~user.repository.js \n" + error
		);
	}
}

export async function getEncryptedPassword(email) {
	try {
		const password = await db.query(
			`SELECT password FROM users WHERE email = $1`,
			[email]
		);
		return password.rows[0];
	} catch (error) {
		registerError(
			"at function -getEncryptedPassword on ~user.repository.js \n" +
				error
		);
	}
}

export async function createNewUser({ email, name, password }) {
	try {
		await db.query(
			`INSERT INTO users (email, name, password) VALUES ($1, $2, $3)`,
			[email, name, password]
		);
	} catch (error) {
		registerError(
			"at function -createNewUser on ~user.repository.js \n" + error
		);
	}
}

export async function getUserIdByEmail(email) {
	try {
		const userId = await db.query(`SELECT id FROM users WHERE email = $1`, [
			email,
		]);
		return userId.rows[0];
	} catch (error) {
		registerError(
			"at function -getUserIdByEmail on ~user.repository.js \n" + error
		);
	}
}

export async function getUserByToken(token) {
	try {
		const userFound = await db.query(
			`SELECT * FROM users WHERE token = $1`,
			[token]
		);
		return userFound.rows[0];
	} catch (error) {
		registerError(
			"at function -checkToken on ~session.repository.js \n" + error
		);
	}
}
