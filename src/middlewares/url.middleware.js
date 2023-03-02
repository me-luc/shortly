import { getUserIdByUrlId } from "../repositories/user.respository.js";

export async function checkUrlDeletePermission(req, res, next) {
	try {
		const urlId = req.params.id;
		const urlUserId = await getUserIdByUrlId(urlId);
		if (!urlUserId) return res.sendStatus(404);
		if (urlUserId !== req.locals.userId) return res.sendStatus(401);
		next();
	} catch (error) {
		registerError(
			"at function -checkUrlDeletePermission on ~url.middleware.js \n" +
				error
		);
	}
}
