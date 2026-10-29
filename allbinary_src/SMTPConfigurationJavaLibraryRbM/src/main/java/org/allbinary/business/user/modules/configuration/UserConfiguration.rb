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
# package org.allbinary.business.user.modules.configuration

require "org/allbinary/business/user/modules/configuration/UserConfigurationInterface"

class UserConfiguration
    include UserConfigurationInterface
    attr_accessor :userEmailConfigurationInterface, :timeCreated, :timeLastModified

    def initialize_fields
        @userEmailConfigurationInterface = nil
        @timeCreated = nil
        @timeLastModified = nil
    end

    def initialize(*args)
        case args.length
        when 0 then constructor0(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor0()
        initialize_fields
        @userEmailConfigurationInterface = UserEmailConfiguration.new()
        @timeCreated = TimeCreated.new(0)
        @timeLastModified = TimeLastModified.new(0)
    end
    

    def constructor1(hashMap)
        initialize_fields
        @userEmailConfigurationInterface = UserEmailConfiguration.new(hashMap)
        @timeCreated = TimeCreated.new(hashMap.get(EntryData.getInstance().TIMECREATED))
        @timeLastModified = TimeLastModified.new(hashMap.get(EntryData.getInstance().LASTMODIFIED))
    end
    

    def getUserEmailConfigurationInterface()
        return @userEmailConfigurationInterface
    end
    

    def setUserEmailConfigurationInterface(userEmailConfigurationInterface)
        @userEmailConfigurationInterface = userEmailConfigurationInterface
    end
    

    def getTimeCreated()
        return @timeCreated
    end
    

    def getTimeLastModified()
        return @timeLastModified
    end
    

    def setTimeCreated(timeCreated)
        @timeCreated = timeCreated
    end
    

    def setTimeLastModified(timeLastModified)
        @timeLastModified = timeLastModified
    end
end

require "java/util/HashMap"
require "org/allbinary/business/entry/EntryData"
require "org/allbinary/business/time/created/TimeCreated"
require "org/allbinary/business/time/modified/TimeLastModified"
require "org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfiguration"
require "org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfigurationInterface"

