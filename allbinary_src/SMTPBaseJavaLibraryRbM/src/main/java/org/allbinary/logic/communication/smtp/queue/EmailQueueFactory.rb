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
# package org.allbinary.logic.communication.smtp.queue


class EmailQueueFactory
    

    def initialize()
    end
    

    def self.getInstance()
        return EmailQueueFactory.emailQueueInterface
    end

    def self.emailQueueInterface()
        return defined?(@@emailQueueInterface) ? @@emailQueueInterface : nil
    end

    def self.emailQueueInterface=(value)
        @@emailQueueInterface = value
    end
end

require "org/allbinary/logic/communication/smtp/queue/BasicEmailQueue"
require "org/allbinary/logic/communication/smtp/queue/EmailQueueInterface"

class EmailQueueFactory
    @@emailQueueInterface = BasicEmailQueue.getInstance()
end

