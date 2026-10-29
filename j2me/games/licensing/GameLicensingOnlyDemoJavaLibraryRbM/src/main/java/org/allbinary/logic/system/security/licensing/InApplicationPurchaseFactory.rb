# 
# To change this license header, choose License Headers in Project Properties. 
# To change this template file, choose Tools | Templates 
# and open the template in the editor.  
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

