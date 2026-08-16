# Shared "release" target: packages the .sch/.spice/.cir sources, the built
# report PDF, and a README pointing back to the GitHub repo into ROLLNO.zip.
# Included by each assignment's Makefile -- `make release` there builds the
# PDF first (via the `all` dependency) and then zips it up.

ROLLNO := NS26Z186
REPO_URL := https://github.com/JoyenBenitto/EE5311
ASSIGN_NAME := $(notdir $(CURDIR))

.PHONY: release
release: all
	@echo "Packaging $(ROLLNO).zip for $(ASSIGN_NAME)..."
	@rm -rf .release_stage $(ROLLNO).zip
	@mkdir -p .release_stage/$(ROLLNO)
	@cp $(wildcard *.sch) $(wildcard *.spice) $(wildcard *.cir) index.pdf .release_stage/$(ROLLNO)/
	@echo "Source, simulation setup, and build instructions:" > .release_stage/$(ROLLNO)/README.md
	@echo "$(REPO_URL)/tree/main/assignments/$(ASSIGN_NAME)" >> .release_stage/$(ROLLNO)/README.md
	@cd .release_stage && zip -q -r ../$(ROLLNO).zip $(ROLLNO)
	@rm -rf .release_stage
	@echo "Created $(ASSIGN_NAME)/$(ROLLNO).zip"

.PHONY: clean-release
clean-release:
	rm -f $(ROLLNO).zip
