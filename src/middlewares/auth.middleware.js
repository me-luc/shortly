import { getUserByToken } from "../repositories/user.respository.js";

function formatToken(authorization) {
	return authorization?.replace("Bearer ", "");
}

export async function validateToken(req, res, next) {
	const { authorization } = req.headers;
	const token = formatToken(authorization);
	if (!token) return res.sendStatus(401);

	req.locals = req.locals || {};
	req.locals.token = token;
	const userFound = await getUserByToken(token);

	if (!userFound) return res.sendStatus(401);
	req.locals.userId = userFound.userId;
	next();
}
