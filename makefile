
README.md: guessinggame.sh makefile
	@echo "# Guessing Game" > README.md
	@echo "" >> README.md
	@echo "Last make run: $$(date)" >> README.md
	@echo "" >> README.md
	@echo "Lines of code: $$(wc -l < guessinggame.sh)" >> README.md

