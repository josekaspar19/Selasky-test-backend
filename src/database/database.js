import mysql from "promise-mysql";
import config from "../config";

const pool=mysql.createPool({
    connectionLimit: 10, 
    host: config.host,
    database: config.database,
    user: config.user,
    password: config.password
});

const getPool=()=>{
    return pool;
};

module.exports = {
    getPool
};