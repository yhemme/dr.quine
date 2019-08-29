function $() {
	/* Encore un commentaire inutile */
	const fs = require('fs');
	let data = String($) + "\n" + "$();" + "\n";
	fs.writeFile('Grace_kid.js', data, (err) => {
	});
}
$();
