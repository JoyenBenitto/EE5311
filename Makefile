.PHONY: all
all: assignment1 assignment2

.PHONY: assignment1
assignment1:
	@echo "Building assignment 1..."
	$(MAKE) -C assignments/assignment1 all

.PHONY: assignment2
assignment2:
	@echo "Building assignment 2..."
	$(MAKE) -C assignments/assignment2 all

clean:
	@echo "Cleaning assignment 1..."
	$(MAKE) -C assignments/assignment1 clean
	@echo "Cleaning assignment 2..."
	$(MAKE) -C assignments/assignment2 clean
