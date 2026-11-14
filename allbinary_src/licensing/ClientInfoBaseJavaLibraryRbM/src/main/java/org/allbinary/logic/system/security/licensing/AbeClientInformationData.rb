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


class AbeClientInformationData
    attr_accessor :KEY, :NAME, :VERSION, :SPECIALNAME, :LICENSEID, :LICENSE_TYPE, :PREVIOUSLICENSEID, :OSNAME, :OSARCH, :OSVERSION, :OS, :HARDWARE, :LICENSESERVERS, :NEWLICENSE, :ISNEW, :SPECIAL

    def initialize_fields
        @KEY = "KEY"
        @NAME = "NAME"
        @VERSION = "VERSION"
        @SPECIALNAME = "SPECIALNAME"
        @LICENSEID = "LICENSEID"
        @LICENSE_TYPE = "LICENSETYPE"
        @PREVIOUSLICENSEID = "PREVIOUSLICENSEID"
        @OSNAME = "OSNAME"
        @OSARCH = "OSARCH"
        @OSVERSION = "OSVERSION"
        @OS = "OS"
        @HARDWARE = "HARDWARE"
        @LICENSESERVERS = "LICENSESERVERS"
        @NEWLICENSE = "NEWLICENSE"
        @ISNEW = "ISNEW"
        @SPECIAL = "SPECIAL"
    end
    

    def self.getInstance()
        return AbeClientInformationData.instance
    end
    

    def initialize()
        initialize_fields
    end

    def self.instance()
        AbeClientInformationData.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AbeClientInformationData.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = AbeClientInformationData.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AbeClientInformationData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    AbeClientInformationData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

