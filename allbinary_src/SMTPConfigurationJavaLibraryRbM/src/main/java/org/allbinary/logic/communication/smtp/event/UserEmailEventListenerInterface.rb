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
# package org.allbinary.logic.communication.smtp.event

require "java/lang/JavaOverload"
require "java/util/EventListener"

module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event

module UserEmailEventListenerInterface
    include ::Java::Util::EventListener
    

    # throws Exception
    def onEmailSendRequest(userEmailInfoEvent)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :onEmailSendRequest, 1
end

autoload :EmailEvent, "org/allbinary/logic/communication/smtp/event/EmailEvent" unless const_defined?(:EmailEvent, false)

end; end; end; end; end; end

