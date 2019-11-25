const fs = require('fs');
var pd = require('pretty-data').pd;
// const format = require('xml-formatter');
// var xml = '<root>content><p xml:space="preserve">This is <b>some</b> content.</content></p>';
 
// var formattedXml = format(xml);
// console.log(formattedXml);

let xml;
fs.readFile('in.xml', 'utf-8',  (err, data) => {
    if (err) {
        return console.log(err);
    }

    // console.log(data);
    let xmlPP = pd.xml(data);
    // xml = format(xml);


    fs.writeFile("out.xml", xmlPP, function(err) {
        if(err) {
            return console.log(err);
        }
        console.log("The file was saved!");
    });
});
