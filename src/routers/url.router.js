import { Router } from "express";
import {
	deleteUrl,
	getUrlById,
	openShortUrl,
} from "../controllers/url.controller.js";
import { validateToken } from "../middlewares/auth.middleware.js";
import validateSchema from "../middlewares/schema.middleware.js";
import { checkUrlDeletePermission } from "../middlewares/url.middleware.js";
import { urlSchema } from "../schemas/url.schema.js";

const urlRouter = Router();

urlRouter.delete(
	"/urls/:id",
	validateToken,
	checkUrlDeletePermission,
	deleteUrl
);
urlRouter.post("/urls/shorten", validateToken, validateSchema(urlSchema));
urlRouter.get("/urls/:id", getUrlById);
urlRouter.get("/urls/open/:shortUrl", openShortUrl);

export default urlRouter;
