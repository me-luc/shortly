import dayjs from "dayjs";
import gmt from "dayjs/plugin/timezone.js";
import fs from "fs";

const path = "./logs/errors.log";
dayjs.extend(gmt);

export default function registerError(error) {
	const currentTime = dayjs().format("YYYY-MM-DD HH:mm:ss");
	const lineBreak = "\r\n\n";

	const formattedError = `[ ${currentTime} ] - ${error} ${lineBreak}`;
	try {
		if (fs.existsSync(path)) {
			appendError(formattedError);
		} else {
			createFileAndAddError(formattedError);
		}
	} catch (error) {
		console.log("error -> ", error);
	}
}

function createFileAndAddError(error) {
	fs.writeFileSync(path, error, function (err) {
		if (err) console.log("error while trying to write a log", err);
	});
}

function appendError(error) {
	fs.appendFileSync(path, error, function (err) {
		if (err) console.log("error while trying to write a log", err);
	});
}
