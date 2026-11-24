#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
# 
# By agreeing to this license you and any business entity you represent are
# legally bound to the AllBinary Open License Version 1 legal agreement.
# 
# You may obtain the AllBinary Open License Version 1 legal agreement from
# AllBinary or the root directory of AllBinary's AllBinary Platform repository.
# 
# Created By: Travis Berthelot
#  
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.input.automation.actions.script.condition.processors.input


module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition; module Processors; module Input

class ProfileActionScriptInputFactory
    

    def initialize()
    end
    

    # throws Exception
    def self.getInstance(node)
        profileActionScriptInputInterface = nil
        if ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNodeNoThrow(KeyboardActionScriptInputData::NAME, node.getChildNodes()) != nil
            profileActionScriptInputInterface = KeyboardActionScriptInput.new(node)
        elsif ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNodeNoThrow(MouseActionScriptInputData::NAME, node.getChildNodes()) != nil
            profileActionScriptInputInterface = MouseActionScriptInput.new(node)
        else
            raise StandardError.new("No Such ActionScript Input")
        end
        return profileActionScriptInputInterface
    end
end

module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :KeyboardActionScriptInput, "org/allbinary/input/automation/actions/script/condition/processors/input/KeyboardActionScriptInput" unless const_defined?(:KeyboardActionScriptInput, false)
autoload :KeyboardActionScriptInputData, "org/allbinary/input/automation/actions/script/condition/processors/input/KeyboardActionScriptInputData" unless const_defined?(:KeyboardActionScriptInputData, false)
autoload :MouseActionScriptInput, "org/allbinary/input/automation/actions/script/condition/processors/input/MouseActionScriptInput" unless const_defined?(:MouseActionScriptInput, false)
autoload :MouseActionScriptInputData, "org/allbinary/input/automation/actions/script/condition/processors/input/MouseActionScriptInputData" unless const_defined?(:MouseActionScriptInputData, false)
autoload :ProfileActionScriptInputInterface, "org/allbinary/input/automation/actions/script/condition/processors/input/ProfileActionScriptInputInterface" unless const_defined?(:ProfileActionScriptInputInterface, false)

end; end; end; end; end; end; end; end; end

