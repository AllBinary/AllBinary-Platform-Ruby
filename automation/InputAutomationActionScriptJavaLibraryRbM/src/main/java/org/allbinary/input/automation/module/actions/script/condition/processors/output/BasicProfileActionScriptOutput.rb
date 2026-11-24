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
# package org.allbinary.input.automation.module.actions.script.condition.processors.output

require "java/lang/JavaOverload"
require "org/allbinary/input/automation/actions/script/condition/processors/BasicProfileActionScriptProcessor"
require "org/allbinary/input/automation/module/actions/script/condition/processors/output/ProfileActionScriptOutputInterface"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Actions; module Script; module Condition; module Processors; module Output

class BasicProfileActionScriptOutput < ::Org::Allbinary::Input::Automation::Actions::Script::Condition::Processors::BasicProfileActionScriptProcessor
    include ProfileActionScriptOutputInterface

    def initialize(*args)
        case args.length
        when 2 then jnew_org_allbinary_input_automation_module_actions_script_condition_processors_output_BasicProfileActionScriptOutput_2(*args)
        when 1 then jnew_org_allbinary_input_automation_module_actions_script_condition_processors_output_BasicProfileActionScriptOutput_1(*args)
        else raise ArgumentError, "No constructor of BasicProfileActionScriptOutput takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_input_automation_module_actions_script_condition_processors_output_BasicProfileActionScriptOutput_2(label, node)
        BasicProfileActionScriptOutput.superclass.instance_method(:initialize).bind(self).call(label, node)
    end
    

    def jnew_org_allbinary_input_automation_module_actions_script_condition_processors_output_BasicProfileActionScriptOutput_1(label)
        BasicProfileActionScriptOutput.superclass.instance_method(:initialize).bind(self).call(label)
    end
    

    # throws Exception
    def toXmlNode(document)
        node = document.createElement(GenericProfileActionScriptOutputData::NAME)
        return node
    end
    java_overload :toXmlNode, 1
end

module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :GenericProfileActionScriptOutputData, "org/allbinary/input/automation/module/actions/script/condition/processors/output/GenericProfileActionScriptOutputData" unless const_defined?(:GenericProfileActionScriptOutputData, false)

end; end; end; end; end; end; end; end; end; end

