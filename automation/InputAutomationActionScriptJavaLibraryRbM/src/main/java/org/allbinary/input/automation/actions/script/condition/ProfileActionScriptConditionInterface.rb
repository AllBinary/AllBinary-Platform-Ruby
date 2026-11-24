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
# package org.allbinary.input.automation.actions.script.condition

require "java/lang/JavaOverload"
require "org/allbinary/input/automation/actions/script/ProfileActionScriptItemInterface"
require "org/allbinary/input/automation/actions/script/ProfileActionScriptNodeInterface"
require "org/allbinary/input/automation/actions/script/condition/CustomTreeNodeInterface"

module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition

module ProfileActionScriptConditionInterface
    include ::Org::Allbinary::Input::Automation::Actions::Script::ProfileActionScriptNodeInterface
    include CustomTreeNodeInterface
    include ::Org::Allbinary::Input::Automation::Actions::Script::ProfileActionScriptItemInterface
    

    def addProcessor(profileActionProcessorInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :addProcessor, 1
    

    def removeProcessor(profileActionProcessorInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :removeProcessor, 1
    

    # throws Exception
    def shouldProcess(frame)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :shouldProcess, 1
end

module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition; module Processors; autoload :ProfileActionScriptProcessorInterface, "org/allbinary/input/automation/actions/script/condition/processors/ProfileActionScriptProcessorInterface" unless const_defined?(:ProfileActionScriptProcessorInterface, false); end; end; end; end; end; end; end; end

end; end; end; end; end; end; end

