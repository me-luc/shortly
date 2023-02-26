import registerError from "../../logs/log-writer.js";
import db from "../config/database.js";

export async function getRankingList() {
	try {
		const list = await db.query(
			`SELECT id, name, links_count, visit_count FROM users ORDER BY visit_count DESC`
		);
		return list.rows;
	} catch (error) {
		registerError(
			"at function -getRankingList on ~ranking.repository.js \n" + error
		);
	}
}
