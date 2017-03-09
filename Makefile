.PHONY: clean All

All:
	@echo "----------Building project:[ SpelLaboration - Debug ]----------"
	@cd "C:\Users\Daniel\Documents\SpelLaboration\SpelLaboration" && "$(MAKE)" -f  "SpelLaboration.mk" && "$(MAKE)" -f  "SpelLaboration.mk" PostBuild
clean:
	@echo "----------Cleaning project:[ SpelLaboration - Debug ]----------"
	@cd "C:\Users\Daniel\Documents\SpelLaboration\SpelLaboration" && "$(MAKE)" -f  "SpelLaboration.mk" clean
