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


class LicenseTypeFactory
    attr_accessor :UNKNOWN, :DEMO, :NORMAL

    def initialize_fields
        @UNKNOWN = LicenseType.new(CommonStrings.getInstance().UNKNOWN)
        @DEMO = LicenseType.new("Demo")
        @NORMAL = LicenseType.new("Normal")
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return LicenseTypeFactory.instance
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getInstance(name)
        if @DEMO.getName().compareTo(name) == 0
            return @DEMO
        elsif @NORMAL.getName().compareTo(name) == 0
            return @NORMAL
        end
        return @UNKNOWN
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/system/security/licensing/LicenseType"

class LicenseTypeFactory
    @@instance = LicenseTypeFactory.new()
end

