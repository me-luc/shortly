import registerError from "../../logs/log-writer.js";
import { getUserIdByUrlId } from "../repositories/user.respository.js";

export async function checkUrlDeletePermission(req, res, next) {
	try {
		console.log("HEY");
		const urlId = req.params.id;
		const urlOwner = await getUserIdByUrlId(urlId);
		if (!urlOwner) return res.sendStatus(404);
		if (urlOwner.userId !== req.locals.userId) return res.sendStatus(401);
		next();
	} catch (error) {
		registerError(
			"at function -checkUrlDeletePermission on ~url.middleware.js \n" +
				error
		);
	}
}
