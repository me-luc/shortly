import { Router } from "express";
import { deleteUrl } from "../controllers/url.controller.js";
import { validateToken } from "../middlewares/auth.middleware.js";
import { checkUrlDeletePermission } from "../middlewares/url.middleware.js";

const urlRouter = Router();

urlRouter.delete(
	"/urls/:id",
	validateToken,
	checkUrlDeletePermission,
	deleteUrl
);

export default urlRouter;
