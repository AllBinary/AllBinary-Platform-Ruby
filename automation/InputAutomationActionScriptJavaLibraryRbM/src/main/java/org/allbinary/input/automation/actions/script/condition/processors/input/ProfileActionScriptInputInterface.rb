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

require "java/lang/JavaOverload"
require "org/allbinary/input/automation/actions/script/condition/processors/ProfileActionScriptProcessorInterface"

module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition; module Processors; module Input

module ProfileActionScriptInputInterface
    include ::Org::Allbinary::Input::Automation::Actions::Script::Condition::Processors::ProfileActionScriptProcessorInterface
    

    def setInputRobotInterface(inputRobotInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setInputRobotInterface, 1
    

    def getInputRobotInterface()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getInputRobotInterface, 0
    

    def getTime()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getTime, 0
    

    def setTime(time)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setTime, 1
end

module ::Org; module Allbinary; module Input; module Automation; module Robot; autoload :InputRobotInterface, "org/allbinary/input/automation/robot/InputRobotInterface" unless const_defined?(:InputRobotInterface, false); end; end; end; end; end

end; end; end; end; end; end; end; end; end

