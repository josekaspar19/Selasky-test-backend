import {Router} from "express";
import { methods as productsController } from "../controllers/products.controller";

const router=Router();

router.post("/", productsController.addProduct);
router.delete("/:id", productsController.deleteProduct);
router.put("/:id", productsController.updateProduct);
router.get("/", productsController.getProducts);
router.get("/:id", productsController.getProduct);




export default router;