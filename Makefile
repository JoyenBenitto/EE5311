.PHONY: all
all: assignment1 assignment2 assignment3 assignment4 assignment5

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

.PHONY: assignment4
assignment4:
	@echo "Building assignment 4..."
	$(MAKE) -C assignments/assignment4 all

.PHONY: assignment5
assignment5:
	@echo "Building assignment 5..."
	$(MAKE) -C assignments/assignment5 all

.PHONY: release
release:
	@echo "Releasing assignment 1..."
	$(MAKE) -C assignments/assignment1 release
	@echo "Releasing assignment 2..."
	$(MAKE) -C assignments/assignment2 release
	@echo "Releasing assignment 3..."
	$(MAKE) -C assignments/assignment3 release
	@echo "Releasing assignment 4..."
	$(MAKE) -C assignments/assignment4 release
	@echo "Releasing assignment 5..."
	$(MAKE) -C assignments/assignment5 release

clean:
	@echo "Cleaning assignment 1..."
	$(MAKE) -C assignments/assignment1 clean
	@echo "Cleaning assignment 2..."
	$(MAKE) -C assignments/assignment2 clean
	@echo "Cleaning assignment 3..."
	$(MAKE) -C assignments/assignment3 clean
	@echo "Cleaning assignment 4..."
	$(MAKE) -C assignments/assignment4 clean
	@echo "Cleaning assignment 5..."
	$(MAKE) -C assignments/assignment5 clean
