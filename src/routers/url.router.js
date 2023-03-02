import { Router } from "express";
import {
	deleteUrl,
	getUrlById,
	openShortUrl,
} from "../controllers/url.controller.js";
import { validateToken } from "../middlewares/auth.middleware.js";
import { checkUrlDeletePermission } from "../middlewares/url.middleware.js";

const urlRouter = Router();

urlRouter.delete(
	"/urls/:id",
	validateToken,
	checkUrlDeletePermission,
	deleteUrl
);
urlRouter.post("/urls/shorten", validateToken);
urlRouter.get("/urls/:id", getUrlById);
urlRouter.get("/urls/open/:shortUrl", openShortUrl);

export default urlRouter;
