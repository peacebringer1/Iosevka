build:
	podman run -it --rm -v ${PROJ_PATH}:/work --entrypoint bash iosevka-builder -c 'npm install && npm run build -- ttf::SyzporiMono'
	podman run -it --rm -v ${PROJ_PATH}:/work --entrypoint bash iosevka-builder -c 'npm install && npm run build -- ttf::SyzporiSerif'
	podman run -it --rm -v ${PROJ_PATH}:/work --entrypoint bash iosevka-builder -c 'npm install && npm run build -- ttf::SyzporiSans'

install:
	cp -r dist/SyzporiMono/TTF ${HOME}/.local/share/fonts
	cp -r dist/SyzporiSerif/TTF ${HOME}/.local/share/fonts
	cp -r dist/SyzporiSans/TTF ${HOME}/.local/share/fonts

zipall:
	zip -j dist/SyzporiFonts_non-hinted.zip dist/SyzporiMono/TTF/*
	zip -j dist/SyzporiFonts_non-hinted.zip -u dist/SyzporiSerif/TTF/*
	zip -j dist/SyzporiFonts_non-hinted.zip -u dist/SyzporiSans/TTF/* 

remove:
	rm -rf ${HOME}/.local/share/fonts/*

clean:
	rm -rf .build/*
	rm -rf dist/*