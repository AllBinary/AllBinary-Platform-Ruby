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
# package org.allbinary.logic.communication.smtp.configuration.user.event


class UserEmailEventListenerFactory
    

    def initialize()
    end
    

    # throws Exception
    def self.getInstance(abeClientInformation, userEmailEventConfigurationInterface, userInterface)
        params = Array.new(1, nil)
        classes = Array.new(1, nil)
        classes[0] = UserInterface
        params[0] = userInterface
        return AbeFactory.getInstance().getInstance(abeClientInformation, userEmailEventConfigurationInterface.getEventListenerClassPath(), classes, params)
    end
end

require "org/allbinary/business/user/UserInterface"
require "org/allbinary/logic/communication/smtp/event/UserEmailEventListenerInterface"
require "org/allbinary/logic/system/loader/AbeFactory"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfigurationInterface"

