import { getPool } from "./../database/database";

const addOrder = async (req, res) => {
    try{
        const { IdUser, OrderNumber, DateTime, ProviderName, Observation, TotalValue, Status} = req.body;

        if(IdUser===undefined || OrderNumber===undefined || DateTime===undefined || ProviderName===undefined || Observation===undefined || TotalValue===undefined || Status===undefined){
            res.status(400).json({message: "Bad request. Please fill all field." });
        }

        const order={IdUser, OrderNumber, DateTime, ProviderName, Observation, TotalValue, Status}
        const pool = await getPool();
        await pool.query("INSERT INTO orders SET ?", order, function(err, result, fields){
            res.json({ message: "Order added!!!", id: result.insertId });
        });

    }catch(error){
        res.status(500);
        res.send(error.message);
    }
};

const deleteOrder = async (req,res) => {
    try{
        const {id} = req.params;
        const pool = await getPool();
        const result=await pool.query("DELETE FROM orders  WHERE IdOrder = ?", id);
        console.log(result);
        res.json({message: "Order Deleted!!!"});
    }catch(error){
        if(error.errno === 1451){
            res.json({message: "The order you want to delete has a product assigned to it and cannot be deleted."});
        }else{
            // console.log(error.errno);
            res.status(500);
            res.send(error.message);
        }

    }
};

const updateOrder = async (req,res) => {
    try{
        const { id } = req.params;
        const { OrderNumber, DateTime, Observation, ProviderName, TotalValue, Status} = req.body;
  
        if(OrderNumber===undefined || DateTime===undefined || ProviderName===undefined || Observation===undefined || TotalValue===undefined || Status===undefined){
            res.status(400).json({message: "Bad request. Please fill all field." });
        }
        const order={OrderNumber, DateTime, ProviderName, Observation, TotalValue, Status}
        const pool = await getPool();
        await pool.query("UPDATE orders SET ? WHERE IdOrder = ?", [order, id]);
        res.json({message: "Order Updated!!!"});
    }catch(error){
        res.status(500);
        res.send(error.message);
    }
};

const getOrders = async (req,res) => {
    try{
        const pool = await getPool();
        const result=await pool.query("SELECT IdOrder, O.IdUser, U.Name, OrderNumber, DateTime, ProviderName, DateCreated, Observation, TotalValue, O.Status FROM orders O, user U WHERE O.IdUser = U.IdUser ");
        console.log(result);
        res.json(result);
    }catch(error){
        res.status(500);
        res.send(error.message);
    }
};

const getOrder = async (req,res) => {
    try{
        const {id} = req.params;
        const pool = await getPool();
        const result=await pool.query("SELECT IdOrder, O.IdUser, U.Name, OrderNumber, DateTime, ProviderName, DateCreated, Observation, TotalValue, O.Status FROM orders O, user U WHERE O.IdUser = U.IdUser and O.IdOrder = ?", id);
        console.log(result);
        res.json(result);
    }catch(error){
        res.status(500);
        res.send(error.message);
    }
};

export const methods = {
    addOrder,
    deleteOrder,
    updateOrder,
    getOrders,
    getOrder
    
};
