.PHONY: clean All

All:
	@echo "----------Building project:[ 2 - Debug ]----------"
	@cd "2" && "$(MAKE)" -f  "2.mk"
clean:
	@echo "----------Cleaning project:[ 2 - Debug ]----------"
	@cd "2" && "$(MAKE)" -f  "2.mk" clean
