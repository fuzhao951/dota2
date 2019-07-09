const express=require("express");
const pool=require("../pool.js");
var router=express.Router();
router.post("/login",function(req,res){
	console.log(req.body);
	var loginname,login;
	for (var key in req.body)
	{
		if (key=="phone")
		{
			login=req.body[key];
			loginname="phone";
		}
		else if (key=="email")
		{
			login=req.body[key];
			loginname="email";
		}
	}
	console.log(login,loginname)
	pool.query("SELECT uid from dota2_user where "+loginname+"=?AND password=?",[login,req.body.upwd],function(err,result){
		if(err) throw err;
		if (result.length>0)
		{
			res.send("1");
		}
		else{
			res.send("0");
		}
	})
})
router.get("/regname",function(req,res){
	console.log(111);
		pool.query("SELECT uid from dota2_user where phone=?",[req.query.phone],function(err,result){
			if (err) throw err;
			if(result.length>0)
			{
				res.send("1");
			}
			else{
				res.send("0");
			}
		})
	})
router.post("/reg",function(req,res){
			console.log(req.body);
		pool.query("INSERT INTO dota2_user SET ?",[req.body],function(err,result){
			if (err) throw err;
			if (result.affectedRows>0)
			{
				res.send("1");
			}
			else{
				res.send("0");
			}
		})
		})
router.get("/emailyz",function(req,res){
	console.log(req.query.email);
		pool.query("SELECT uid from dota2_user where email=?",[req.query.email],function(err,result){
			if (err) throw err;
			if (result.length>0)
			{
				res.send("1");
			}
			else{
				res.send("0");
			}
		})
		})
module.exports=router;