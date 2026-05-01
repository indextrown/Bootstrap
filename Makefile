TEMPLATE_DIR := $(HOME)/Library/Developer/Xcode/Templates/File Templates/Custom Templates
SOURCE_DIR := ./2. Template
MVVM_TEMPLATE := $(SOURCE_DIR)/UIKit-MVVM.xctemplate
REACTORKIT_TEMPLATE := $(SOURCE_DIR)/UIKit-ReactorKit.xctemplate

.PHONY: mvvm reactorkit all install-templates

mvvm:
	@echo "Installing UIKit-MVVM template..."
	@mkdir -p "$(TEMPLATE_DIR)"
	@rm -rf "$(TEMPLATE_DIR)/UIKit-MVVM.xctemplate"
	@cp -R "$(MVVM_TEMPLATE)" "$(TEMPLATE_DIR)"
	@echo "Installed: UIKit-MVVM.xctemplate"

reactorkit:
	@echo "Installing UIKit-ReactorKit template..."
	@mkdir -p "$(TEMPLATE_DIR)"
	@rm -rf "$(TEMPLATE_DIR)/UIKit-ReactorKit.xctemplate"
	@cp -R "$(REACTORKIT_TEMPLATE)" "$(TEMPLATE_DIR)"
	@echo "Installed: UIKit-ReactorKit.xctemplate"

all:
	@echo "Installing all templates..."
	@mkdir -p "$(TEMPLATE_DIR)"
	@rm -rf "$(TEMPLATE_DIR)/UIKit-MVVM.xctemplate"
	@rm -rf "$(TEMPLATE_DIR)/UIKit-ReactorKit.xctemplate"
	@cp -R "$(MVVM_TEMPLATE)" "$(TEMPLATE_DIR)"
	@cp -R "$(REACTORKIT_TEMPLATE)" "$(TEMPLATE_DIR)"
	@echo "Installed all templates."

install-templates: all
