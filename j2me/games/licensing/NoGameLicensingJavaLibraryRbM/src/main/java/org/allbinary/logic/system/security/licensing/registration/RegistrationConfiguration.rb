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
# package org.allbinary.logic.system.security.licensing.registration


class RegistrationConfiguration
    attr_accessor :registrationCode, :NAME

    def initialize_fields
        @registrationCode = "No Registration Code"
        @NAME = "registrationid"
    end
    

    def initialize()
        initialize_fields
    end
    

    def self.getInstance()
        return RegistrationConfiguration::SINGLETON
    end
    

    # throws Exception
    def read()
    end
    

    # throws Exception
    def write()
    end
    

    def toString()
        return StringMaker.new().append("Registration Code: ").append(self.getRegistrationCode()).to_s
    end
    alias_method :to_s, :toString
    

    def setRegistrationCode(registrationCode)
        @registrationCode = registrationCode
    end
    

    def getRegistrationCode()
        return @registrationCode
    end
end

require "org/allbinary/logic/string/StringMaker"

class RegistrationConfiguration
    SINGLETON = RegistrationConfiguration.new()
end

