.POSIX:

.SUFFIXES: .scad .stl .png

OPENSCAD = openscad
OPENSCAD_FLAGS =

.scad.stl:
	$(OPENSCAD) $(OPENSCAD_FLAGS) -o $@ $<
.scad.png:
	$(OPENSCAD) --autocenter --viewall $(OPENSCAD_FLAGS) -o $@ $<

models: bottom.stl top.stl
previews: bottom.png top.png assembly.png

clean:
	rm -f bottom.stl top.stl bottom.png top.png assembly.png

help:
	@echo "available targets: models, previews, clean"
	@echo "influential macros:"
	@echo "    OPENSCAD:       openscad binary, currently: $(OPENSCAD)"
	@echo "    OPENSCAD_FLAGS: flags to pass to openscad, currently: $(OPENSCAD_FLAGS)"
	@echo "useful openscad defines (see common.scad for defaults and others):"
	@echo "    -D flange_dia=[distance]"
	@echo "    -D shaft_dia=[distance]"
	@echo "    -D flange_thickness=[distance]"
	@echo "    -D shaft_length=[distance] (for the assembled spool, not each half)"
	@echo "    -D cutaway=true (render the assembly preview as a cutaway)

top.scad: common.scad
	touch $@
bottom.scad: common.scad
	touch $@
assembly.scad: common.scad
	touch $@
