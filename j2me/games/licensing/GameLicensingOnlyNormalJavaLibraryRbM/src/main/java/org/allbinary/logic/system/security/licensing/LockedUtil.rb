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

require "org/allbinary/logic/system/security/licensing/LockedUtilInterface"

class LockedUtil
    include LockedUtilInterface
    

    def self.getInstance()
        return LockedUtil.instance
    end
    

    def isLocked()
        return false
    end
    

    def isLockedFeature(lockableFeatrue)
        return false
    end

    def self.instance()
        LockedUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        LockedUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = LockedUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "LockedUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :LockableFeature, "org/allbinary/logic/system/security/licensing/LockableFeature"

begin
    LockedUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

