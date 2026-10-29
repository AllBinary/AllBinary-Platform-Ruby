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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class AbeClientInformationData
    @@instance = AbeClientInformationData.new()
end

