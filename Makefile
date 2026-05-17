build:
	podman run -it --rm -v ${PROJ_PATH}:/work --entrypoint bash iosevka-builder -c 'npm install && npm run build -- ttf::IosevkaCustomMono'
	podman run -it --rm -v ${PROJ_PATH}:/work --entrypoint bash iosevka-builder -c 'npm install && npm run build -- ttf::IosevkaCustomSerif'

install:
	cp -r dist/IosevkaCustomMono/TTF ${HOME}/.local/share/fonts
	cp -r dist/IosevkaCustomSerif/TTF ${HOME}/.local/share/fonts

remove:
	rm -rf ${HOME}/.local/share/fonts/*