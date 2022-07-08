import express from "express";
import morgan from "morgan";
// Routes
import userRoutes from "./routes/user.routes";
import ordersRoutes from "./routes/orders.routes";
import productsRoutes from "./routes/products.routes";

const app=express();

// Settings
app.set("port", 3000);

// Middlewares
app.use(morgan("dev"));
app.use(express.json());
// Routes
app.use("/api/v1/users", userRoutes);
app.use("/api/v1/orders", ordersRoutes);
app.use("/api/v1/products", productsRoutes);

export default app;