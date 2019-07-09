const express=require("express");
const bodyParser=require("body-parser");
const cors=require('cors');
const userRouter=require("./routes/user.js");
const heroRouter=require("./routes/hero.js");
var server=express();
server.listen(8080);
server.use(cors({
	origin:"http://127.0.0.1:5501"
  }))
server.use(express.static("public"));
server.use(express.static("image"));
server.use(bodyParser.urlencoded({
	extended:false
}));
server.use("/user",userRouter);
server.use("/hero",heroRouter);