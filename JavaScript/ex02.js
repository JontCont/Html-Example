var name = prompt("enter name","");
var age = prompt("enter age","");
var sex = prompt("enter sex","");
var all = new Array(3);
all = ["name" ,"age","sex"];

function outln(type,Individual){
    document.write("you are "+type+" is "+Individual+"<hr/>");
}
for(var i = 0 ;i<all.length ;i++)
{
    if(i==1)
        outln(all[i],age);
    else if(i==2)
        outln(all[i],sex);
    else outln(all[i],name);
}




