.PHONY: all
all: assignment1 assignment2 assignment3

.PHONY: assignment1
assignment1:
	@echo "Building assignment 1..."
	$(MAKE) -C assignments/assignment1 all

.PHONY: assignment2
assignment2:
	@echo "Building assignment 2..."
	$(MAKE) -C assignments/assignment2 all

.PHONY: assignment3
assignment3:
	@echo "Building assignment 3..."
	$(MAKE) -C assignments/assignment3 all

.PHONY: release
release:
	@echo "Releasing assignment 1..."
	$(MAKE) -C assignments/assignment1 release
	@echo "Releasing assignment 2..."
	$(MAKE) -C assignments/assignment2 release
	@echo "Releasing assignment 3..."
	$(MAKE) -C assignments/assignment3 release

clean:
	@echo "Cleaning assignment 1..."
	$(MAKE) -C assignments/assignment1 clean
	@echo "Cleaning assignment 2..."
	$(MAKE) -C assignments/assignment2 clean
	@echo "Cleaning assignment 3..."
	$(MAKE) -C assignments/assignment3 clean
