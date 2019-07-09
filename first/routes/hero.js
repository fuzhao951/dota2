const express=require("express");
const pool=require("../pool.js");
var router=express.Router();
router.get("/heroname",function(req,res){
    pool.query("select hcname from dota2_hero",function(err,result){
        if(err) throw err;
        res.send(result);
    })
})
router.get("/herol",function(req,res){
    pool.query("select * from dota2_hero where hattr='力量' and hid<=63",function(err,result){
        if(err) throw err;
        res.send(result);
    })
})
router.get("/herom",function(req,res){
    pool.query("select * from dota2_hero where hattr='敏捷' and hid<=63",function(err,result){
        if(err) throw err;
        res.send(result);
    })
})
router.get("/heroz",function(req,res){
    pool.query("select * from dota2_hero where hattr='智力' and hid<=63",function(err,result){
        if(err) throw err;
        res.send(result);
    })
})
router.get("/herolb",function(req,res){
    pool.query("select * from dota2_hero where hattr='力量' and hid>63",function(err,result){
        if(err) throw err;
        res.send(result);
    })
})
router.get("/heromb",function(req,res){
    pool.query("select * from dota2_hero where hattr='敏捷' and hid>63",function(err,result){
        if(err) throw err;
        res.send(result);
    })
})
router.get("/herozb",function(req,res){
    pool.query("select * from dota2_hero where hattr='智力' and hid>63",function(err,result){
        if(err) throw err;
        res.send(result);
    })
})

module.exports=router;