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
# package org.allbinary.input.automation.actions.script.condition.processors

require "java/lang/JavaOverload"
# require "java/awt/event/ActionEvent"
require "org/allbinary/input/automation/actions/script/ProfileActionScriptItem"
require "org/allbinary/input/automation/actions/script/condition/processors/ProfileActionScriptProcessorInterface"

module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition; module Processors

class BasicProfileActionScriptProcessor < ::Org::Allbinary::Input::Automation::Actions::Script::ProfileActionScriptItem
    include ProfileActionScriptProcessorInterface

    def initialize(*args)
        case args.length
        when 2 then jnew_org_allbinary_input_automation_actions_script_condition_processors_BasicProfileActionScriptProcessor_2(*args)
        when 1 then jnew_org_allbinary_input_automation_actions_script_condition_processors_BasicProfileActionScriptProcessor_1(*args)
        else raise ArgumentError, "No constructor of BasicProfileActionScriptProcessor takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_input_automation_actions_script_condition_processors_BasicProfileActionScriptProcessor_2(label, node)
        BasicProfileActionScriptProcessor.superclass.instance_method(:initialize).bind(self).call(label, node)
    end
    

    def jnew_org_allbinary_input_automation_actions_script_condition_processors_BasicProfileActionScriptProcessor_1(label)
        BasicProfileActionScriptProcessor.superclass.instance_method(:initialize).bind(self).call(label)
    end
    

    def actionPerformed(actionEvent)
        BasicProfileActionScriptProcessor.superclass.java_super_method(:actionPerformed, 1).bind(self).call(actionEvent)
        if actionEvent.getActionCommand().compareTo(DELETE) == 0
            if self.getParent().is_a?(::Org::Allbinary::Input::Automation::Actions::Script::Condition::ProfileActionScriptConditionInterface)
                profileActionScriptConditionInterface = self.getParent()
                profileActionScriptConditionInterface.removeProcessor(self)
                ::Org::Allbinary::Input::Automation::Actions::Script::JTreeInterfaceFactory.getInstance().getJTreeInterface().updateJTree()
            end
        end
    end
    java_overload :actionPerformed, 1
    

    # throws Exception
    def toXmlNode(document)
        node = document.createElement(GenericProfileActionScriptProcessorData::NAME)
        return node
    end
    java_overload :toXmlNode, 1
end

module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; autoload :JTreeInterfaceFactory, "org/allbinary/input/automation/actions/script/JTreeInterfaceFactory" unless const_defined?(:JTreeInterfaceFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition; autoload :ProfileActionScriptConditionInterface, "org/allbinary/input/automation/actions/script/condition/ProfileActionScriptConditionInterface" unless const_defined?(:ProfileActionScriptConditionInterface, false); end; end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :GenericProfileActionScriptProcessorData, "org/allbinary/input/automation/actions/script/condition/processors/GenericProfileActionScriptProcessorData" unless const_defined?(:GenericProfileActionScriptProcessorData, false)

end; end; end; end; end; end; end; end

