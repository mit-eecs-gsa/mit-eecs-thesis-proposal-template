.DEFAULT_GOAL := main

MAIN=SM_Thesis_Proposal

help:
	@echo "make help"
	@echo "    main: compile main.pdf"
	@echo
	@echo "    *Note*: uses \`latexmk' for compilation management. Please install latexmk"
	@echo "            if you do not have it already."


main:
	latexmk -bibtex -pdf $(MAIN)

clean:
	latexmk -quiet -C $(MAIN)

