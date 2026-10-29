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

require "java/lang/Object"
# require "javax/mail/Transport"
require "org/allbinary/logic/util/queue/BasicQueue"
require "org/allbinary/logic/communication/smtp/queue/EmailQueueInterface"

class BasicEmailQueue < BasicQueue
    include EmailQueueInterface
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def self.getInstance()
        java_monitor.synchronize do
        if BasicEmailQueue.basicEmailQueue == nil
            BasicEmailQueue.basicEmailQueue = BasicEmailQueue.new()
        end
        return BasicEmailQueue.basicEmailQueue
        end
    end
    

    # throws Exception
    def offer(emailInterface)
        java_monitor.synchronize do
        self.offer(emailInterface)
        self.post(emailInterface)
        return true
        end
    end
    

    def remove(emailInterface)
        java_monitor.synchronize do
        self.remove(emailInterface)
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def remove()
        java_monitor.synchronize do
        return nil
        end
    end
    

    # throws Exception
    def post(emailInterface)
        java_monitor.synchronize do
        if self.send(emailInterface)
            self.remove(emailInterface)
            self.processAllUnsent()
        end
        end
    end
    

    # throws Exception
    def processAllUnsent()
        java_monitor.synchronize do
        size = @queueVector.size()
        (0...size).each do |index|
            emailInterface = @queueVector.get(index)
            if self.send(emailInterface)
                self.remove(emailInterface)
                self.processAllUnsent()
            end
        end
        end
    end
    

    def send(emailInterface)
        java_monitor.synchronize do
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGING)
                @logUtil.putF("Sending: " + (emailInterface.log()).to_s, self, "send")
            end
            Transport.send(emailInterface.getMimeMessage())
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGING)
                @logUtil.putF("Email Send Debug: " + (emailInterface.getDebugInfo()).to_s, self, "send")
            end
            return true
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGING)
                @logUtil.put("Failed Email Send Debug: " + (emailInterface.getDebugInfo()).to_s, self, "send", e)
            end
            return false
        end
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end

    def self.basicEmailQueue()
        return defined?(@@basicEmailQueue) ? @@basicEmailQueue : nil
    end

    def self.basicEmailQueue=(value)
        @@basicEmailQueue = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/smtp/EmailInterface"

class BasicEmailQueue
    @@instance = BasicEmailQueue.new()
    @@basicEmailQueue = nil
end

