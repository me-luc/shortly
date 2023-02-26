import dayjs from "dayjs";
import gmt from "dayjs/plugin/timezone.js";
import fs from "fs";

const path = "./src/logs/errors.log";
dayjs.extend(gmt);

export default function registerError(error) {
	const currentTime = dayjs().format("YYYY-MM-DD HH:mm:ss");
	const lineBreak = "\r\n\n";

	const formattedError = `[ ${currentTime} ] - ${error} ${lineBreak}`;
	try {
		if (fs.existsSync(path)) {
			fs.appendFileSync(path, formattedError, function (err) {
				if (err) console.log("error while trying to write a log", err);
			});
		} else {
			fs.writeFileSync(path, formattedError, function (err) {
				if (err) console.log("error while trying to write a log", err);
			});
		}
	} catch (error) {
		console.log("error -> ", error);
	}
}
