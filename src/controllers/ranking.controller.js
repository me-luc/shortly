import registerError from "../../logs/log-writer.js";
import { getRankingList } from "../repositories/ranking.repository.js";

export async function getRanking(req, res) {
	try {
		const list = await getRankingList();
		return res.status(200).send(list);
	} catch (error) {
		registerError(
			"at function -getRanking on ~ranking.controller.js \n" + error
		);
	}
}
