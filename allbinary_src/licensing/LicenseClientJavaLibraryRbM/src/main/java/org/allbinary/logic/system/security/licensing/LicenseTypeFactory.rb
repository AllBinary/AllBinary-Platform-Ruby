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

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing

class LicenseTypeFactory
    attr_accessor :UNKNOWN, :DEMO, :NORMAL

    def jfields_org_allbinary_logic_system_security_licensing_LicenseTypeFactory
        @UNKNOWN = LicenseType.new(::Org::Allbinary::StringPackage::CommonStrings.getInstance().UNKNOWN)
        @DEMO = LicenseType.new("Demo")
        @NORMAL = LicenseType.new("Normal")
    end

    def initialize
        jfields_org_allbinary_logic_system_security_licensing_LicenseTypeFactory
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def getInstance(name)
        if @DEMO.getName().compareTo(name) == 0
            return @DEMO
        elsif @NORMAL.getName().compareTo(name) == 0
            return @NORMAL
        end
        return @UNKNOWN
    end

    def self.instance()
        LicenseTypeFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        LicenseTypeFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = LicenseTypeFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "LicenseTypeFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :LicenseType, "org/allbinary/logic/system/security/licensing/LicenseType" unless const_defined?(:LicenseType, false)

begin
    LicenseTypeFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

