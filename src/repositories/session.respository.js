import db from "../config/database.js";
import registerError from "../../logs/log-writer.js";

export async function addNewSession(token, email) {
	try {
		await db.query(
			`INSERT INTO sessions (user_id, token) VALUES ( (SELECT id FROM users WHERE email = $1), $2)`,
			[email, token]
		);
	} catch (error) {
		registerError(
			"at function -addNewSession on ~session.repository.js \n" + error
		);
	}
}
