fx_version 'cerulean'
game 'gta5'
version '1.0'

ui_page {
    'html/ui.html',
}

files {
	'html/ui.html',
	'html/js/app.js', 
	'html/css/style.css',
}

client_scripts {
	'client/main.lua',
}

exports {
	'SendAlert',
	'SendShortAlert',
	'SendLongAlert',
	'SendCustomNotify',
}
