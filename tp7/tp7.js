function addition(){
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c= Number(a) + Number(b);
    document.getElementById("t3").value= c;
    

}
function soustraction(){
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c= Number(a) - Number(b);
    document.getElementById("t3").value= c;
    

}
function division(){
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c= Number(a) / Number(b);
    document.getElementById("t3").value= c;
    

}
function multiplication(){
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c= Number(a) * Number(b);
    document.getElementById("t3").value= c;
    

}
function parite(){
    var a =document.getElementById("t3").value;
    if(a%2==0){
        document.getElementById("t4").value= "pair";
    }
    else{
        document.getElementById("t4").value= "impair";
    }
}
function permute(){
    var a =document.getElementById("t1").value;
    var b =document.getElementById("t2").value;
    var c =document.getElementById("t1").value;
    document.getElementById("t1").value=b;
    document.getElementById("t2").value= c;
}
