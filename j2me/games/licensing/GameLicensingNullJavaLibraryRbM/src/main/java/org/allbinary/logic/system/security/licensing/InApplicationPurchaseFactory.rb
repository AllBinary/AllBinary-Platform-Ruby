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


module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing

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
        return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
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

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
autoload :LockableFeature, "org/allbinary/logic/system/security/licensing/LockableFeature" unless const_defined?(:LockableFeature, false)

begin
    InApplicationPurchaseFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

