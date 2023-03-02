import bcrypt from "bcrypt";
import {
	checkIfEmailExists,
	createNewUser,
	getEncryptedPassword,
	getUserData,
	getUserUrlList,
} from "../repositories/user.respository.js";
import { v4 as uuid } from "uuid";
import { addNewSession } from "../repositories/session.respository.js";

export function signIn(req, res) {
	try {
		const { email, password } = req.body;

		const encryptedPassword = getEncryptedPassword(email);

		const isPasswordCorrect = bcrypt.compare(password, encryptedPassword);
		if (!isPasswordCorrect) return res.sendStatus(401);
	} catch (error) {
		registerError("at function -signIn on ~user.controller.js \n" + error);
	}
}

export async function signUp(req, res) {
	try {
		const { email, name, password } = req.body;

		const emailExists = await checkIfEmailExists(email);
		if (emailExists.rowCount > 0) return res.sendStatus(409);

		const encryptedPassword = await bcrypt.hash(password, 10);
		await createNewUser({ email, name, password: encryptedPassword });
		const token = createToken();
		addNewSession(token, email);
		return res.status(201).send(token);
	} catch (error) {
		registerError("at function -signUp on ~user.controller.js \n" + error);
	}
}

export async function getUserInfo(req, res) {
	try {
		const userId = req.locals.userId;
		const userInfo = await getUserData(userId);
		const urlList = await getUserUrlList(userId);

		const formattedUserInfo = { ...userInfo, shortenedUrls: urlList };
		console.log(formattedUserInfo);
	} catch (error) {
		registerError("at function -signUp on ~user.controller.js \n" + error);
	}
}

function createToken() {
	return uuid();
}
