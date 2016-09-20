.PHONY: clean All

All:
	@echo "----------Building project:[ stm32 - Debug ]----------"
	@cd "stm32" && "$(MAKE)" -f  "stm32.mk"
clean:
	@echo "----------Cleaning project:[ stm32 - Debug ]----------"
	@cd "stm32" && "$(MAKE)" -f  "stm32.mk" clean
