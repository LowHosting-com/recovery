CONFIG_FILES = $(wildcard *)

clean: $(CONFIG_FILES)
	lb clean
config: $(CONFIG_FILES)
	lb config --distribution bookworm --archive-areas "main contrib non-free non-free-firmware"
build: clean config $(CONFIG_FILES)
	lb build
