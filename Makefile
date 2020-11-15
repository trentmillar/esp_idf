.PHONY: all prepare lint test

all:

prepare:
	git submodule init
	git submodule update

copy_components: prepare
	mkdir -p 02_dht11/components
	cp -R esp-idf-lib/components/dht 02_dht11/components/dht
	cp -R esp-idf-lib/components/esp_idf_lib_helpers 02_dht11/components/esp_idf_lib_helpers
	