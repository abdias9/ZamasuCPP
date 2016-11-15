.PHONY: clean All

All:
	@echo "----------Building project:[ Zamasu - Debug ]----------"
	@cd "Zamasu" && "$(MAKE)" -f  "Zamasu.mk"
clean:
	@echo "----------Cleaning project:[ Zamasu - Debug ]----------"
	@cd "Zamasu" && "$(MAKE)" -f  "Zamasu.mk" clean
