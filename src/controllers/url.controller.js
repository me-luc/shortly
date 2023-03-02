import db from "../config/database.js";

export async function deleteUrl(req, res) {
	try {
		const id = req.params.id;
		db.query(`DELETE FROM urls where id = $1`, [id]);
		return res.sendStatus(204);
	} catch (error) {
		registerError(
			"at function -deleteUrl on ~url.controller.js \n" + error
		);
		return res.status(500).send("It seems to be an error in the server!");
	}
}

export async function getUrlById(req, res) {
	try {
		const id = req.params.id;
		const urlFound = await db.query(
			`SELECT id, short_url AS "shortUrl", url FROM urls WHERE id = $1`,
			[id]
		);
		if (urlFound.rowCount === 0) return res.sendStatus(404);
		return res.status(200).send(urlFound.rows[0]);
	} catch (error) {
		registerError(
			"at function -getUrlById on ~url.controller.js \n" + error
		);
		return res.status(500).send("It seems to be an error in the server!");
	}
}
