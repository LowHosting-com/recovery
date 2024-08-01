clean:
	lb clean
config:
	lb config --distribution bookworm --archive-areas "main contrib non-free non-free-firmware"
build: clean config
	lb build
