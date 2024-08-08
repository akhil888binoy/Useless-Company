"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.registerUser = void 0;
const client_1 = require("@prisma/client");
const prisma = new client_1.PrismaClient();
const registerUser = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const { username, email, password, fullName, dateOfBirth, address, phoneNumber } = req.body;
        if (!username || !email || !password) {
            res.status(400).json({ message: "Username, email, and password are required." });
            return;
        }
        const existingUser = yield prisma.user.findFirst({
            where: {
                OR: [
                    { email: email },
                    { username: username }
                ]
            }
        });
        if (existingUser) {
            res.status(400).json({ message: "User with this email or username already exists." });
            return;
        }
        const salt = yield bcrypt.genSalt(10);
        const hashedPassword = yield bcrypt.hash(password, salt);
        // Create the new user
        const newUser = yield prisma.user.create({
            data: {
                username,
                email,
                passwordHash: hashedPassword,
                fullName,
                dateOfBirth: dateOfBirth ? new Date(dateOfBirth) : null,
                address,
                phoneNumber,
                createdAt: new Date()
            }
        });
        res.status(201).json({ message: "User registered successfully.", user: newUser });
    }
    catch (error) {
        res.status(500).json({ message: "Error retrieving users " });
    }
});
exports.registerUser = registerUser;
