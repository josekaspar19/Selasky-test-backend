import { getPool } from "./../database/database";

const addUser = async (req, res) => {
    try{
        const { Name, Email, Status} = req.body;

        if(Name===undefined || Email===undefined || Status===undefined){
            res.status(400).json({message: "Bad request. Please fill all field." });
        }

        const user={Name,Email,Status}
        const pool = await getPool();
        await pool.query("INSERT INTO user SET ?", user);
        res.json({ message: "User added!!!" });
    }catch(error){
        res.status(500);
        res.send(error.message);
    }
};

const deleteUser = async (req,res) => {
    try{
        const {id} = req.params;
        const pool = await getPool();
        const result=await pool.query("DELETE FROM user  WHERE IdUser = ?", id);
        console.log(result);
        res.json({message: "User Deleted!!!"});
    }catch(error){
        if(error.errno === 1451){
            res.json({message: "The user you want to delete has an assigned order and cannot be deleted."});
        }else{
            // console.log(error.errno);
            res.status(500);
            res.send(error.message);
        }

    }
};

const updateUser = async (req,res) => {
    try{
        const { id } = req.params;
        const { Name, Email, Status} = req.body;

        if(id === undefined || Name===undefined || Email===undefined || Status===undefined){
            res.status(400).json({message: "Bad request. Please fill all field." });
        }
        const user = { Name, Email, Status};
        const pool = await getPool();
        await pool.query("UPDATE user SET ? WHERE IdUser = ?", [user, id]);
        res.json({message: "User Updated!!!"});
    }catch(error){
        res.status(500);
        res.send(error.message);
    }
};

const getUsers = async (req,res) => {
    try{
        const pool = await getPool();
        const result=await pool.query("SELECT IdUser, Name, Email, Status, if(Status = 1, 'Active', 'Inactive') as StatusT FROM user ");
        console.log(result);
        res.json(result);
    }catch(error){
        res.status(500);
        res.send(error.message);
    }
};

const getUser = async (req,res) => {
    try{
        const {id} = req.params;
        const pool = await getPool();
        const result=await pool.query("SELECT IdUser, Name, Email, Status, if(Status = 1, 'Active', 'Inactive') as StatusT FROM user  WHERE IdUser = ?", id);
        console.log(result);
        res.json(result);
    }catch(error){
        res.status(500);
        res.send(error.message);
    }
};

export const methods = {
    addUser,
    deleteUser,
    updateUser,
    getUsers,
    getUser
    
};
