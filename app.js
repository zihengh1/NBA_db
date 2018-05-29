//app.js

const mysql = require('mysql');
const connection = mysql.createConnection({
		host: 'localhost',
		user: 'root',
		password: 'gggyyy123',
		database: 'SQL_Test',
		port: '3306'
});

connection.connect((err) => {
		if(err) {
				console.log('Error!');
		}
		else {
				console.log('Connected!');
		}
});

connection.query('SELECT 12 + 34 AS result', function(err, rows, fields) {
    if (err) {
				console.log('Error!');
		}
		else {
				console.log('The result is: ', rows[0].result);
		}
});
 
connection.end();
