#!/usr/bin/node
'use strict';

// First param.
let x = parseFloat(process.argv[2]);
console.log(`x: ${x}`);
let a = x;
let b = Math.pow(x, 2) + 1;
let result = a / b;

console.log(`a: ${a}`);
console.log(`b: ${b}`);
console.log(`result: ${result}`);
