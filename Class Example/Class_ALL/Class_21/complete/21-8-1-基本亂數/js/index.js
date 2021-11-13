
var rNum = Math.random();

console.log('亂數：' + rNum);
console.log('10 倍亂數：' + rNum * 10);
console.log('10 倍亂數四捨五入：' + Math.round(rNum * 10));
console.log('10 倍亂數無條件捨去：' + Math.floor(rNum * 10));
console.log('10 倍亂數無條件進位：' + Math.ceil(rNum * 10));