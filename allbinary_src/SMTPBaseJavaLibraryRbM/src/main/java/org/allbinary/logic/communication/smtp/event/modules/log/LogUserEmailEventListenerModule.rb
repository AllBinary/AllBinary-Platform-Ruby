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
# package org.allbinary.logic.communication.smtp.event.modules.log

require "java/lang/JavaOverload"
require "org/allbinary/logic/communication/smtp/event/UserEmailEventListenerInterface"

module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event; module Modules; module Log

class LogUserEmailEventListenerModule
    include ::Org::Allbinary::Logic::Communication::Smtp::Event::UserEmailEventListenerInterface
    attr_accessor :logUtil

    def jfields_org_allbinary_logic_communication_smtp_event_modules_log_LogUserEmailEventListenerModule
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize()
        jfields_org_allbinary_logic_communication_smtp_event_modules_log_LogUserEmailEventListenerModule
    end
    

    # throws Exception
    def onEmailSendRequest(userEmailInfoEvent)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().EMAILLOGGING)
            message = "Logging EmailEvent - Temporary Listener for debugging.\n\n" + userEmailInfoEvent.to_s
            @logUtil.putF(message, self, "onEmailSendRequest")
        end
    end
    java_overload :onEmailSendRequest, 1
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event; autoload :EmailEvent, "org/allbinary/logic/communication/smtp/event/EmailEvent" unless const_defined?(:EmailEvent, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end; end; end; end

