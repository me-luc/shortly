import registerError from "../../logs/log-writer.js";
import db from "../config/database.js";

export async function getRankingList() {
	try {
		const list = await db.query(
			`SELECT
				users.id, 
				users.name, 
				COUNT(urls.user_id) AS "linksCount", 
				SUM(urls.visit_count) AS "visitCount"
			FROM users 
			JOIN urls on users.id = urls.user_id
			GROUP BY users.id
			ORDER BY "visitCount" DESC
			LIMIT 10`
		);
		return list.rows;
	} catch (error) {
		registerError(
			"at function -getRankingList on ~ranking.repository.js \n" + error
		);
	}
}
