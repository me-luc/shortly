import db from "../config/database.js";

export async function insertUrl(url, shortUrl, userId) {
	return await db.query(
		`INSERT INTO urls (url, short_url, user_id) VALUES ($1, $2, $3)`,
		[url, shortUrl, userId]
	);
}

export async function findUrlByShortUrl(shortUrl) {
	return await db.query(`SELECT url FROM urls WHERE short_url = $1`, [
		shortUrl,
	]);
}

export async function deleteUrlById(id) {
	return await db.query(`DELETE FROM urls where id = $1`, [id]);
}

export async function findIdShortUrlUrlById(id) {
	return await db.query(
		`SELECT id, short_url AS "shortUrl", url FROM urls WHERE id = $1`,
		[id]
	);
}

export async function findUrlByShortUrlUserFormat(shortUrl) {
	return await db.query(
		`SELECT id, short_url AS "shortUrl" FROM urls WHERE short_url = $1`,
		[shortUrl]
	);
}
