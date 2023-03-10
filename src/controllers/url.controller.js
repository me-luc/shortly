import { nanoid } from "nanoid";
import registerError from "../../logs/log-writer.js";
import db from "../config/database.js";
import {
	deleteUrlById,
	findIdShortUrlUrlById,
	findUrlByShortUrl,
	findUrlByShortUrlUserFormat,
	insertUrl,
	updateVisitCount,
} from "../repositories/url.repository.js";

export async function deleteUrl(req, res) {
	try {
		const id = req.params.id;
		deleteUrlById(id);
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
		const urlFound = await findIdShortUrlUrlById(id);
		if (urlFound.rowCount === 0) return res.sendStatus(404);
		return res.status(200).send(urlFound.rows[0]);
	} catch (error) {
		registerError(
			"at function -getUrlById on ~url.controller.js \n" + error
		);
		return res.status(500).send("It seems to be an error in the server!");
	}
}

export async function openShortUrl(req, res) {
	try {
		const shortUrl = req.params.shortUrl;
		const urlFound = await findUrlByShortUrl(shortUrl);

		if (urlFound.rowCount === 0) return res.sendStatus(404);

		const url = urlFound.rows[0].url;
		await updateVisitCount(shortUrl);
		res.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		return res.redirect(301, url);
	} catch (error) {
		registerError(
			"at function -openShortUrl on ~url.controller.js \n" + error
		);
		return res.status(500).send("It seems to be an error in the server!");
	}
}

export async function addUrl(req, res) {
	try {
		const userId = req.locals.userId;
		const { url } = req.body;

		let shortUrl, shortUrlExists;

		do {
			shortUrl = nanoid(16);
			shortUrlExists = await findUrlByShortUrl(shortUrl);
		} while (shortUrlExists.rowCount > 0);

		insertUrl(url, shortUrl, userId);
		const newUrl = await findUrlByShortUrlUserFormat(shortUrl);
		return res.status(201).send(newUrl.rows[0]);
	} catch (error) {
		registerError("at function -addUrl on ~url.controller.js \n" + error);
		return res.status(500).send("It seems to be an error in the server!");
	}
}
