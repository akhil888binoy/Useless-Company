import express from "express";

import dotenv from "dotenv";
import bodyParser from "body-parser";
import helmet from "helmet";
import morgan from "morgan";
import cors from "cors";

// ROUTES IMPORTS

// CONFIGURATIONS

dotenv.config();
const app = express();
app.use(express.json());
app.use(helmet());
app.use(helmet.crossOriginResourcePolicy({ policy: "cross-origin" }));
app.use(morgan("common"));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cors());

// ROUTES
app.use("/user", userRoutes); // http://localhost:8000/dashboard
// app.use("/products", productRoutes); // http://localhost:8000/products
// app.use("/users", userRoutes); // http://localhost:8000/users
// app.use("/expenses", expenseRoutes); // http://localhost:8000/expenses


/* SERVER */
const port = Number(process.env.PORT) || 3001;
app.listen(port, "0.0.0.0", () => {
  console.log(`Server running on port ${port}`);
});