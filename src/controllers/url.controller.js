import db from "../config/database.js";

export async function deleteUrl(req, res, url) {
	try {
		const id = req.params.id;
		db.query(`DELETE FROM urls where id = $1`, [id]);
		return res.sendStatus(204);
	} catch (error) {
		registerError(
			"at function -deleteUrl on ~url.repository.js \n" + error
		);
		return res.status(500).send("It seems to be an error in the server!");
	}
}
