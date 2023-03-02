import express from "express";
import cors from "cors";
import dotenv from "dotenv";
import userRouter from "./routers/user.router.js";
import rankingRouter from "./routers/ranking.router.js";
import urlRouter from "./routers/url.router.js";

dotenv.config();

const app = express();
app.use(cors());
app.use(express.json());
app.use([userRouter, rankingRouter, urlRouter]);

const PORT = process.env.PORT || 8080;
app.listen(PORT, () => {
	console.log(`server is running on port ${PORT}...`);
});
