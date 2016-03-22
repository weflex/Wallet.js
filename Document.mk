ORG2GFM = build/orgmk/bin/org2gfm
PATH := build/orgmk/bin:$(PATH)

README.md: doc/README.md
	@mv $< $@

index.html: doc/README.html
	@mv $< $@

doc/%.md: doc/%.org orgmk
	@PATH=$(PATH) org2gfm $<

doc/%.html: doc/%.org orgmk
	@PATH=$(PATH) org2html $<

orgmk: build/orgmk/bin/orgmk.conf

build/orgmk/bin/orgmk.conf:
	@make -C build/orgmk

.PHONY: orgmk
