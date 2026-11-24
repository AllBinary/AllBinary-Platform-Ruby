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

class UserEmailEventListenerFactory
    

    def initialize()
    end
    

    # throws Exception
    def self.getInstance(abeClientInformation, userEmailEventConfigurationInterface, userInterface)
        params = Array.new(1, nil)
        classes = Array.new(1, nil)
        classes[0] = ::Org::Allbinary::Business::User::UserInterface
        params[0] = userInterface
        return ::Org::Allbinary::Logic::System::Loader::AbeFactory.getInstance().getInstance(abeClientInformation, userEmailEventConfigurationInterface.getEventListenerClassPath(), classes, params)
    end
end

module ::Org; module Allbinary; module Business; module User; autoload :UserInterface, "org/allbinary/business/user/UserInterface" unless const_defined?(:UserInterface, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event; autoload :UserEmailEventListenerInterface, "org/allbinary/logic/communication/smtp/event/UserEmailEventListenerInterface" unless const_defined?(:UserEmailEventListenerInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Loader; autoload :AbeFactory, "org/allbinary/logic/system/loader/AbeFactory" unless const_defined?(:AbeFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
autoload :UserEmailEventConfigurationInterface, "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfigurationInterface" unless const_defined?(:UserEmailEventConfigurationInterface, false)

end; end; end; end; end; end; end; end

