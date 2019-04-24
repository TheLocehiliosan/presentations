# Display usage for all make targets
.PHONY: usage
usage:
	@echo
	@echo 'Given name.md'
	@echo
	@echo 'Revealjs:'
	@echo '  make name.html'
	@echo '  make name.full.html (self-contains all content)'
	@echo
	@echo 'Beamer PDF:'
	@echo '  make name.pdf'
	@echo
	@echo 'PowerPoint:'
	@echo '  make name.pptx'
	@echo

# Revealjs
%.html: %.md reveal.js/LICENSE
	@pandoc \
		--no-highlight \
		-t revealjs \
		--template lib/template.html \
		--standalone \
		-o "$@" \
		"$<"

%.full.html: %.md reveal.js/LICENSE
	@pandoc \
		--no-highlight \
		-t revealjs \
		--template lib/template.html \
		--self-contained \
		-o "$@" \
		"$<"

# PDF
%.pdf: %.md
	@pandoc \
		-t beamer \
		-o "$@" \
		"$<"

# PowerPoint
%.pptx: %.md
	@pandoc \
		-o "$@" \
		"$<"

# Init the reveal.js submodule if it looks missing
reveal.js/LICENSE:
	git submodule update --init
