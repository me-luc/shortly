import { getUserByToken } from "../repositories/user.respository";

export function validateToken(req, res, next) {
	const token = req.locals.token;
	const userFound = getUserByToken(token);
	if (!userFound) return res.sendStatus(401);
}

export function formatToken(req, res, next) {
	const { authorization } = req.headers;
	req.locals.token = authorization?.replace("Bearer ", "");
	next();
}
