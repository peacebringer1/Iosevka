build:
	podman run -it --rm -v ${PROJ_PATH}:/work --entrypoint bash iosevka-builder -c 'npm install && npm run build -- ttf::IosevkaCustomMono'
	podman run -it --rm -v ${PROJ_PATH}:/work --entrypoint bash iosevka-builder -c 'npm install && npm run build -- ttf::IosevkaCustomSerif'
	podman run -it --rm -v ${PROJ_PATH}:/work --entrypoint bash iosevka-builder -c 'npm install && npm run build -- ttf::IosevkaCustomSans'

install:
	cp -r dist/IosevkaCustomMono/TTF ${HOME}/.local/share/fonts
	cp -r dist/IosevkaCustomSerif/TTF ${HOME}/.local/share/fonts
	cp -r dist/IosevkaCustomSans/TTF ${HOME}/.local/share/fonts

remove:
	rm -rf ${HOME}/.local/share/fonts/*

clean:
	rm -rf .build/*