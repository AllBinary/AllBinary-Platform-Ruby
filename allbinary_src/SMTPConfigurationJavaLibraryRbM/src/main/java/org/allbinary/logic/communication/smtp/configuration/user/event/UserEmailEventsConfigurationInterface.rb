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


module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Configuration; module User; module Event

module UserEmailEventsConfigurationInterface
    

    def getEventConfigurationHashMap()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def addUserEmailEventConfiguration(userEmailEventConfigurationInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def getEventListener(abeClientInformation, userEmailEventNameData, userInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module User; autoload :UserInterface, "org/allbinary/business/user/UserInterface" unless const_defined?(:UserInterface, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event; autoload :UserEmailEventListenerInterface, "org/allbinary/logic/communication/smtp/event/UserEmailEventListenerInterface" unless const_defined?(:UserEmailEventListenerInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event; autoload :UserEmailEventNameData, "org/allbinary/logic/communication/smtp/event/UserEmailEventNameData" unless const_defined?(:UserEmailEventNameData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
autoload :UserEmailEventConfigurationInterface, "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfigurationInterface" unless const_defined?(:UserEmailEventConfigurationInterface, false)

end; end; end; end; end; end; end; end

