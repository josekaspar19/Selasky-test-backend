import {Router} from "express";
import { methods as userController } from "../controllers/user.controller";

const router=Router();

router.post("/", userController.addUser);
router.delete("/:id", userController.deleteUser);
router.put("/:id", userController.updateUser);
router.get("/", userController.getUsers);
router.get("/:id", userController.getUser);




export default router;