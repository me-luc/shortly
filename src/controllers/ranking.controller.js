import registerError from "../../logs/log-writer.js";
import { getRankingList } from "../repositories/ranking.repository.js";

export async function getRanking(req, res) {
	console.log(req.headers);
	try {
		const list = await getRankingList();
		return res.status(200).send(list);
	} catch (error) {
		registerError(
			"at function -getRanking on ~ranking.controller.js \n" + error
		);
		return res.status(500).send("It seems to be an error in the server!");
	}
}
