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
# package org.allbinary.logic.system.security.licensing


class InApplicationPurchaseFactory
    

    def self.getInstance()
        return InApplicationPurchaseFactory.instance
    end
    

    def initialize()
    end
    

    def init(anyType, stateObject)
    end
    

    def onCreate(anyType, stateObject)
    end
    

    def onStart()
    end
    

    def onResult(requestCode, resultCode, data)
    end
    

    def onSaveState(anyType)
    end
    

    def onStop()
    end
    

    def onDestroy()
    end
    

    def purchase(lockableFeature)
    end
    

    def isPurchased(lockableFeature)
        return false
    end
    

    def add(lockableFeature)
    end
    

    def getUserName()
        return StringUtil.getInstance().EMPTY_STRING
    end
    

    def isEnabled()
        return false
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/system/security/licensing/LockableFeature"

class InApplicationPurchaseFactory
    @@instance = InApplicationPurchaseFactory.new()
end

