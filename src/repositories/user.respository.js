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
			`SELECT *, user_id AS "userId" FROM sessions WHERE token = $1`,
			[token]
		);
		return userFound.rows[0];
	} catch (error) {
		registerError(
			"at function -checkToken on ~user.repository.js \n" + error
		);
	}
}

export async function getAllUserData() {
	try {
		const data = db.query(`SELECT `);
	} catch (error) {
		registerError(
			"at function -getAllUserData on ~user.repository.js \n" + error
		);
	}
}

export async function getUserUrlList(userId) {
	try {
		const urlList = await db.query(
			`SELECT id, short_url AS "shortUrl", url, visit_count AS "visitCount" FROM urls WHERE user_id = $1`,
			[userId]
		);
		return urlList.rows;
	} catch (error) {
		registerError(
			"at function -getUserUrlList on ~user.repository.js \n" + error
		);
	}
}

export async function getUserData(userId) {
	try {
		const userInfo = await db.query(
			`
			SELECT 
				users.id, 
				users.name, 
				SUM(urls.visit_count) AS "visitCount"
			FROM users 
			LEFT JOIN urls ON users.id = urls.user_id
			WHERE users.id = $1
			GROUP BY users.id
		`,
			[userId]
		);
		return userInfo.rows[0];
	} catch (error) {
		registerError(
			"at function -getUserInfo on ~user.repository.js \n" + error
		);
	}
}

export async function getUserIdByToken(token) {
	try {
		const userId = await db.query(`SELECT id FROM users WHERE token = $1`, [
			token,
		]);
		return userId.rows[0];
	} catch (error) {
		registerError(
			"at function -getUserIdByToken on ~user.repository.js \n" + error
		);
	}
}

export async function getUserIdByUrlId(urlId) {
	try {
		const userId = await db.query(
			`SELECT user_id FROM urls WHERE id = $1`,
			urlId
		);
		return userId.rows[0];
	} catch (error) {
		registerError(
			"at function -getUserByUrlId on ~user.repository.js \n" + error
		);
	}
}

// SELECT
// 		users.id AS "userId",
// 		users.name AS "userName",
// 		SUM(urls.visit_count) AS "visitCount",
// 		urls.id AS "urlId",
// 		urls.short_url AS "shortUrl",
// 		urls.url AS "url",
// 		urls.visit_count AS "urlVisitCount"
// FROM users JOIN urls ON users.id = urls.user_id
// GROUP BY urls.id, users.id
// ORDER BY "userId" ASC
