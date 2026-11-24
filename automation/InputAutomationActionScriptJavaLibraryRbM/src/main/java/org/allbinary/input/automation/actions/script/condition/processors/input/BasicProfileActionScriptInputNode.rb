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

class BasicProfileActionScriptInputNode

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_input_automation_actions_script_condition_processors_input_BasicProfileActionScriptInputNode_1(*args)
        when 0 then jnew_org_allbinary_input_automation_actions_script_condition_processors_input_BasicProfileActionScriptInputNode_0(*args)
        else raise ArgumentError, "No constructor of BasicProfileActionScriptInputNode takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_input_automation_actions_script_condition_processors_input_BasicProfileActionScriptInputNode_1(node)
        actionNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(GenericProfileActionScriptInputData::NAME, node.getChildNodes())
    end
    

    def jnew_org_allbinary_input_automation_actions_script_condition_processors_input_BasicProfileActionScriptInputNode_0()
    end
    

    # throws Exception
    def toXmlNode(document)
        node = document.createElement(GenericProfileActionScriptInputData::NAME)
        return node
    end
end

module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :GenericProfileActionScriptInputData, "org/allbinary/input/automation/actions/script/condition/processors/input/GenericProfileActionScriptInputData" unless const_defined?(:GenericProfileActionScriptInputData, false)

end; end; end; end; end; end; end; end; end

