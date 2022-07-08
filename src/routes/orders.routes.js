import {Router} from "express";
import { methods as ordersController } from "../controllers/orders.controller";

const router=Router();

router.post("/", ordersController.addOrder);
router.delete("/:id", ordersController.deleteOrder);
router.put("/:id", ordersController.updateOrder);
router.get("/", ordersController.getOrders);
router.get("/:id", ordersController.getOrder);




export default router;