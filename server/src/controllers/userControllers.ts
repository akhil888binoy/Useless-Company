import { Request, Response } from "express";
import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

export const registerUser = async (
    req: Request,
    res: Response,  
):Promise<void>=>{
    try {
        const {username , email , password  , fullName , dateOfBirth , address , phoneNumber } = req.body;

        if(!username || !email || !password ){
            res.status(400).json({ message: "Username, email, and password are required." });
            return;
        }

        const existingUser = await prisma.user.findFirst({
            where:{
                OR:[
                    {email:email},
                    {username : username}
                ]
            }
        });

        if (existingUser) {
            res.status(400).json({ message: "User with this email or username already exists." });
            return;
          }

    const salt = await bcrypt.genSalt(10);
    const hashedPassword = await bcrypt.hash(password, salt);

    // Create the new user
    const newUser = await prisma.user.create({
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

    } catch (error) {
        res.status(500).json({message: "Error retrieving users "});
    }
}
