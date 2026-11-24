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
# package org.allbinary.logic.communication.smtp.event.modules.event.user

require "java/lang/JavaOverload"
require "org/allbinary/logic/communication/smtp/event/UserEmailEventListenerInterface"

module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event; module Modules; module Event; module User

class UserEmailEventListenerModule
    include ::Org::Allbinary::Logic::Communication::Smtp::Event::UserEmailEventListenerInterface
    attr_accessor :logUtil, :userInterface

    def jfields_org_allbinary_logic_communication_smtp_event_modules_event_user_UserEmailEventListenerModule
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @userInterface = nil unless instance_variable_defined?(:@userInterface)
    end
    

    def initialize(userInterface)
        jfields_org_allbinary_logic_communication_smtp_event_modules_event_user_UserEmailEventListenerModule
        @userInterface = userInterface
    end
    

    # throws Exception
    def onEmailSendFailure(emailEvent)
        to = @userInterface.getSecondaryEmail()
        email = ::Org::Allbinary::Logic::Communication::Smtp::BasicEmail.new(emailEvent.getEmailInfo(), to)
        ::Org::Allbinary::Logic::Communication::Smtp::QueuePackage::EmailQueueFactory.getInstance().offer(email.getEmail())
    end
    java_overload :onEmailSendFailure, 1
    

    # throws Exception
    def onEmailSendRequest(emailEvent)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().EMAILLOGGING)
            @logUtil.putF("Add Email To Que For Sending: " + emailEvent.to_s, self, "onEmailSendRequest")
        end
        to = @userInterface.getMainEmail()
        email = ::Org::Allbinary::Logic::Communication::Smtp::BasicEmail.new(emailEvent.getEmailInfo(), to)
        ::Org::Allbinary::Logic::Communication::Smtp::QueuePackage::EmailQueueFactory.getInstance().offer(email.getEmail())
    end
    java_overload :onEmailSendRequest, 1
end

module ::Org; module Allbinary; module Business; module User; autoload :UserInterface, "org/allbinary/business/user/UserInterface" unless const_defined?(:UserInterface, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; autoload :BasicEmail, "org/allbinary/logic/communication/smtp/BasicEmail" unless const_defined?(:BasicEmail, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; autoload :EmailInterface, "org/allbinary/logic/communication/smtp/EmailInterface" unless const_defined?(:EmailInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event; autoload :EmailEvent, "org/allbinary/logic/communication/smtp/event/EmailEvent" unless const_defined?(:EmailEvent, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module QueuePackage; autoload :EmailQueueFactory, "org/allbinary/logic/communication/smtp/queue/EmailQueueFactory" unless const_defined?(:EmailQueueFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end; end; end; end; end

