TEMPLATE_DIR := $(HOME)/Library/Developer/Xcode/Templates/File Templates/Custom Templates
SNIPPET_DIR := $(HOME)/Library/Developer/Xcode/UserData/CodeSnippets
SOURCE_DIR := ./2. Template
SNIPPET_SOURCE_DIR := ./3. CodeSnippets
MVVM_TEMPLATE := $(SOURCE_DIR)/UIKit-MVVM.xctemplate
REACTORKIT_TEMPLATE := $(SOURCE_DIR)/UIKit-ReactorKit.xctemplate

.PHONY: mvvm reactorkit templates snippets all install-templates install-snippets

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

templates:
	@echo "Installing all templates..."
	@mkdir -p "$(TEMPLATE_DIR)"
	@rm -rf "$(TEMPLATE_DIR)/UIKit-MVVM.xctemplate"
	@rm -rf "$(TEMPLATE_DIR)/UIKit-ReactorKit.xctemplate"
	@cp -R "$(MVVM_TEMPLATE)" "$(TEMPLATE_DIR)"
	@cp -R "$(REACTORKIT_TEMPLATE)" "$(TEMPLATE_DIR)"
	@echo "Installed all templates."

snippets:
	@echo "Installing Xcode code snippets..."
	@mkdir -p "$(SNIPPET_DIR)"
	@find "$(SNIPPET_SOURCE_DIR)" -name "*.codesnippet" -exec cp {} "$(SNIPPET_DIR)" \;
	@echo "Installed code snippets."

all: templates snippets

install-templates: templates

install-snippets: snippets
