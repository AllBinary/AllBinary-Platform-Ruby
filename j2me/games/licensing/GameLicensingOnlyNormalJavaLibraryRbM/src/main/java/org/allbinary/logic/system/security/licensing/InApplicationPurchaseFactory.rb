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
        return true
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
        InApplicationPurchaseFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        InApplicationPurchaseFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = InApplicationPurchaseFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "InApplicationPurchaseFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :LockableFeature, "org/allbinary/logic/system/security/licensing/LockableFeature"

begin
    InApplicationPurchaseFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

