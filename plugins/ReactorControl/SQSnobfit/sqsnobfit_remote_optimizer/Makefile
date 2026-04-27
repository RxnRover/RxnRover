# Author: Zachery Crandall
# Email : zachcran@iastate.edu

PROJECT = "sqsnobfit"

DOCS = documentation

CONFIG = config
SRCDIR = src
SCRIPTDIR = scripts

# Python
PYTHON = python3
PIP = pip3
REQFILE = requirements.txt
VENVDIR = ./venv

# Set bash shell so the `source` command is available
SHELL := /bin/bash

.DEFAULT_GOAL := help
.PHONY: clean veryclean run install help

# Targets include all, clean, debug, tar

install : venv
	@source $(VENVDIR)/bin/activate; \
	echo "----- INSIDE VENV -----"; \
	$(PIP) install -r $(REQFILE); \
	$(PIP) freeze; \
	deactivate

venv :
	@echo "CREATING VENV AT $(VENVDIR)"
	$(PYTHON) -m venv $(VENVDIR)

default :
	@source $(VENVDIR)/bin/activate; \
	$(PYTHON) $(SRCDIR)/main.py ./config/default-config.json --default-config; \
	deactivate

output :
	mkdir -p ./$(OUTPUT)

clean :
	rm -rf ./*.tgz ./*.zip ./$(SRCDIR)/__pycache__

veryclean : clean
	rm -rf ./$(VENVDIR)

tar: clean
	tar zcvf ./$(PROJECT).tgz README.* LICENSE requirements.txt $(DOCS) $(SRCDIR) \
	         Makefile $(SCRIPTDIR) $(CONFIG)

zip : clean
	zip -r ./$(PROJECT).zip README.* LICENSE requirements.txt $(DOCS) $(SRCDIR) \
	       Makefile $(SCRIPTDIR) $(CONFIG)
help:
	@echo " Makefile usage:"
	@echo "	make clean   - remove compressed files and __pycache__"
	@echo "	make default - starts optimization with a default configuration file"
	@echo "	make install - installs all dependencies in a venv, creating the venv if necessary"
	@echo "	make train   - trains the model according to the start_training.sh"
	@echo "	make venv    - creates a venv. This is called when make install is used."
	@echo ""
	@echo " Help with this Makefile:"
	@echo "	make         - same as make help"
	@echo "	make help    - this message"
	@echo ""
	@echo " Compression and Distribution:"
	@echo "	make tar     - make a tarball of project files"
	@echo "	make zip     - make a zip of project files"
