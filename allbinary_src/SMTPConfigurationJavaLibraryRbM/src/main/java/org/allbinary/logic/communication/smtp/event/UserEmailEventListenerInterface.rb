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

# require "java/util/EventListener"

module UserEmailEventListenerInterface
    include EventListener
    

    # throws Exception
    def onEmailSendRequest(userEmailInfoEvent)
        raise NotImplementedError
    end
end

require "org/allbinary/logic/communication/smtp/event/EmailEvent"

