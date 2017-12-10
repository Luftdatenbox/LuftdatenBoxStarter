
deploy:
	sudo ./deploy_app.sh

undeploy:
	sudo ./undeploy_app.sh


build:
	docker-compose build LuftdatenBoxStarter

build_rpi:
	docker-compose build LuftdatenBoxStarterRaspberryPi
