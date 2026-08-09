.PHONY: all
all: assignment1

.PHONY: assignment1
assignment1:
	@echo "Building assignment 1..."
	$(MAKE) -C assignments/assignment1 all
clean:
	@echo "Cleaning assignment 1..."
	$(MAKE) -C assignments/assignment1 clean