build:
	podman run -it --rm -v ${PROJ_PATH}:/work --entrypoint bash iosevka-builder -c 'npm install && npm run build -- ttf::SyzporiMono'
	podman run -it --rm -v ${PROJ_PATH}:/work --entrypoint bash iosevka-builder -c 'npm install && npm run build -- ttf::SyzporiSerif'
	podman run -it --rm -v ${PROJ_PATH}:/work --entrypoint bash iosevka-builder -c 'npm install && npm run build -- ttf::SyzporiSans'

install:
	cp -r dist/SyzporiMono/TTF ${HOME}/.local/share/fonts
	cp -r dist/SyzporiSerif/TTF ${HOME}/.local/share/fonts
	cp -r dist/SyzporiSans/TTF ${HOME}/.local/share/fonts

remove:
	rm -rf ${HOME}/.local/share/fonts/*

clean:
	rm -rf .build/*