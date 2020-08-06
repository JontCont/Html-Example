var obj = { 
    show1 : function() {
        alert(" ?šV¨ì¡I");
    },
    show2 : function() {
        alert("10 ¬í¤@¦¸ªº´£¿ô¡I");
    }
};
setTimeout(obj.show1, 1000);
setTimeout("obj.show1();", 2000);
setInterval(obj.show2, 10000);
setInterval("obj.show2();", 10000);