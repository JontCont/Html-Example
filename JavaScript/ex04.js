var obj = { 
    show1 : function() {
        alert(" ?�V��I");
    },
    show2 : function() {
        alert("10 ��@���������I");
    }
};
setTimeout(obj.show1, 1000);
setTimeout("obj.show1();", 2000);
setInterval(obj.show2, 10000);
setInterval("obj.show2();", 10000);