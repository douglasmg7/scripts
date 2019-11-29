#!/usr/bin/env node
'use strict';

const fs = require('fs');
var pd = require('pretty-data').pd;

// const format = require('xml-formatter');
// var xml = '<root>content><p xml:space="preserve">This is <b>some</b> content.</content></p>';
 
// var formattedXml = format(xml);
// console.log(formattedXml);
let file_in = process.argv[2];
let file_out = process.argv[3];
let xml;

fs.readFile(file_in, 'utf-8',  (err, data) => {
    if (err) {
        return console.log(err);
    }

    // console.log(data);
    let xmlPP = pd.xml(data);
    // xml = format(xml);

    fs.writeFile(file_out, xmlPP, function(err) {
        if(err) {
            return console.log(err);
        }
        console.log("The file was saved!");
    });
});
