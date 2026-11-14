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


module UserEmailEventsConfigurationInterface
    

    def getEventConfigurationHashMap()
        raise NotImplementedError
    end
    

    def addUserEmailEventConfiguration(userEmailEventConfigurationInterface)
        raise NotImplementedError
    end
    

    # throws Exception
    def getEventListener(abeClientInformation, userEmailEventNameData, userInterface)
        raise NotImplementedError
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :UserInterface, "org/allbinary/business/user/UserInterface"
autoload :UserEmailEventListenerInterface, "org/allbinary/logic/communication/smtp/event/UserEmailEventListenerInterface"
autoload :UserEmailEventNameData, "org/allbinary/logic/communication/smtp/event/UserEmailEventNameData"
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
autoload :UserEmailEventConfigurationInterface, "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfigurationInterface"

