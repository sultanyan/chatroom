# README
	
* Ruby version
	2.3.3
* Rails version
	5.0.1 (5.0.0 or higher is required)
* System dependencies
	+ this sometimes works a little bit cringy.
	+ i'm sorry.
	Because this is a real-time app, properly working Redis server is HIGHLY REQUIRED
	Please change {root}/cable.yml to
		development:
		adapter: redis
		url: redis://localhost:6379/1

* Configuration
	run 'bundle install'
* Database creation
	rake db:create
	rake db:migrate
