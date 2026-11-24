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
require "org/allbinary/input/automation/module/actions/script/condition/processors/output/ProfileActionScriptOutputInterface"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Actions; module Script; module Condition; module Processors; module Output

module ImageActionScriptOutputInterface
    include ProfileActionScriptOutputInterface
    

    def getImageTypes()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getImageTypes, 0
    

    def setImageTypes(imageTypes)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setImageTypes, 1
    

    def isSaved()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :isSaved, 0
    

    def setSaved(saved)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setSaved, 1
    

    def isDisplay()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :isDisplay, 0
    

    def setDisplay(display)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setDisplay, 1
    

    def log()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :log, 0
end

autoload :ImageTypes, "org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageTypes" unless const_defined?(:ImageTypes, false)

end; end; end; end; end; end; end; end; end; end

