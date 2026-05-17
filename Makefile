build:
	podman run -it --rm -v ${PROJ_PATH}:/work --entrypoint bash iosevka-builder -c 'npm install && npm run build -- ttf::IosevkaCustomMono'