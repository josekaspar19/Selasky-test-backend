import { getPool } from "./../database/database";

const addProduct = async (req, res) => {
    try{
        const { IdOrder, ValueUnit, Unit, Description, SKU, Quantity, QtyBox, Weight, Volumen, Mark, Status } = req.body;

        if(IdOrder===undefined || ValueUnit===undefined || Unit===undefined || Description===undefined || SKU===undefined || Quantity===undefined || QtyBox===undefined || Weight===undefined || Volumen===undefined || Mark===undefined || Status===undefined){
            res.status(400).json({message: "Bad request. Please fill all field." });
        }

        const product={IdOrder, ValueUnit, Unit, Description, SKU, Quantity, QtyBox, Weight, Volumen, Mark, Status}
        const pool = await getPool();
        await pool.query("INSERT INTO ordersproducts SET ?", product);
        res.json({ message: "Product added!!!" });
    }catch(error){
        res.status(500);
        res.send(error.message);
    }
};

const deleteProduct = async (req,res) => {
    try{
        const {id} = req.params;
        const pool = await getPool();
        const result=await pool.query("DELETE FROM ordersproducts  WHERE IdOrdersProducts = ?", id);
        console.log(result);
        res.json({message: "Product Deleted!!!"});
    }catch(error){
            // console.log(error.errno);
            res.status(500);
            res.send(error.message);
    }
};

const updateProduct = async (req,res) => {
    try{
        const { id } = req.params;
        const { IdOrder, ValueUnit, Unit, Description, SKU, Quantity, QtyBox, Weight, Volumen, Mark, Status } = req.body;

        if(IdOrder===undefined || ValueUnit===undefined || Unit===undefined || Description===undefined || SKU===undefined || Quantity===undefined || QtyBox===undefined || Weight===undefined || Volumen===undefined || Mark===undefined || Status===undefined){
            res.status(400).json({message: "Bad request. Please fill all field." });
        }

        const product={IdOrder, ValueUnit, Unit, Description, SKU, Quantity, QtyBox, Weight, Volumen, Mark, Status}
        const pool = await getPool();
        await pool.query("UPDATE ordersproducts SET ? WHERE IdOrdersProducts = ?", [product, id]);
        res.json({message: "Product Updated!!!"});
    }catch(error){
        res.status(500);
        res.send(error.message);
    }
};

const getProducts = async (req,res) => {
    try{
        const pool = await getPool();
        const result=await pool.query("SELECT IdOrdersProducts , IdOrder, ValueUnit, Unit, Description, SKU, Quantity, QtyBox, Weight, Volumen, Mark, Status FROM ordersproducts ");
        console.log(result);
        res.json(result);
    }catch(error){
        res.status(500);
        res.send(error.message);
    }
};

const getProduct = async (req,res) => {
    try{
        const {id} = req.params;
        const pool = await getPool();
        const result=await pool.query("SELECT IdOrdersProducts , IdOrder, ValueUnit, Unit, Description, SKU, Quantity, QtyBox, Weight, Volumen, Mark, Status FROM ordersproducts WHERE IdOrdersProducts = ?", id);
        console.log(result);
        res.json(result);
    }catch(error){
        res.status(500);
        res.send(error.message);
    }
};

const getProductOrder = async (req,res) => {
    try{
        const {id} = req.params;
        const pool = await getPool();
        const result=await pool.query("SELECT IdOrdersProducts , IdOrder, ValueUnit, Unit, Description, SKU, Quantity, QtyBox, Weight, Volumen, Mark, Status FROM ordersproducts WHERE IdOrder = ?", id);
        console.log(result);
        res.json(result);
    }catch(error){
        res.status(500);
        res.send(error.message);
    }
};

export const methods = {
    addProduct,
    deleteProduct,
    updateProduct,
    getProducts,
    getProduct,
    getProductOrder
    
};
