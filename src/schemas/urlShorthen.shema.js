import Joi from "joi";

export const urlsShema = Joi.object({
    url: Joi.string().uri().trim().required(),
})