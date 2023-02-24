import Joi from "joi";

export const signUpSchema = Joi.object({
	name: Joi.string().min(5).required(),
	email: Joi.string().email().required(),
	password: Joi.string().min(8).max(16).required(),
	confirmPassword: Joi.valid(Joi.ref("password"))
		.label("confirm password")
		.required(),
});

export const signInSchema = Joi.object({
	email: Joi.string().email().required(),
	password: Joi.string().min(8).max(16).required(),
});
