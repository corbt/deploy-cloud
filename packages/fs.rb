package :fs do 
	runner "mkdir -p /data/apps", sudo: true
	runner "chown deploy:deploy /data/apps", sudo: true
	verify { has_directory "/data/apps" }	
end