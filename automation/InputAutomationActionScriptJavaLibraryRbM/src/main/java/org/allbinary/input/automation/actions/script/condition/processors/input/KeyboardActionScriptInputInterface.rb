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

require "org/allbinary/input/automation/actions/script/condition/processors/input/ProfileActionScriptInputInterface"

module KeyboardActionScriptInputInterface
    include ProfileActionScriptInputInterface
    

    def getDelayBetweenKeys()
        raise NotImplementedError
    end
    

    def getKeyArray()
        raise NotImplementedError
    end
    

    def isPress()
        raise NotImplementedError
    end
    

    def isRelease()
        raise NotImplementedError
    end
    

    def isNormal()
        raise NotImplementedError
    end
    

    def setPress(press)
        raise NotImplementedError
    end
    

    def setRelease(release)
        raise NotImplementedError
    end
    

    def setNormal()
        raise NotImplementedError
    end
    

    def getText()
        raise NotImplementedError
    end
    

    def setText(text)
        raise NotImplementedError
    end
    

    def log()
        raise NotImplementedError
    end
end

