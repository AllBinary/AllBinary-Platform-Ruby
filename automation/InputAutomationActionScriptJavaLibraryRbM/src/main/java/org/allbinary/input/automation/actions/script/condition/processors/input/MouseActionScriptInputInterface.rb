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
# require "java/awt/Point"
require "org/allbinary/input/automation/actions/script/condition/processors/input/ProfileActionScriptInputInterface"

module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition; module Processors; module Input

module MouseActionScriptInputInterface
    include ProfileActionScriptInputInterface
    

    def setPoint(point)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setPoint, 1
    

    def getPoint()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getPoint, 0
    

    def getButtonClicks()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getButtonClicks, 0
    

    def setButtonClicks(buttons)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setButtonClicks, 1
    

    def log()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :log, 0
end

end; end; end; end; end; end; end; end; end

