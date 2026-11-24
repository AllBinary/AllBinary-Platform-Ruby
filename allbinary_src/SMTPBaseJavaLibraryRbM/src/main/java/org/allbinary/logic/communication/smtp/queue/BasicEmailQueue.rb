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
require "java/lang/JavaOverload"
# require "javax/mail/Transport"
require "org/allbinary/logic/util/queue/BasicQueue"
require "org/allbinary/logic/communication/smtp/queue/EmailQueueInterface"

module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module QueuePackage

class BasicEmailQueue < ::Org::Allbinary::Logic::Util::QueuePackage::BasicQueue
    include EmailQueueInterface
    attr_accessor :logUtil

    def jfields_org_allbinary_logic_communication_smtp_queue_BasicEmailQueue
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize()
        super()
        jfields_org_allbinary_logic_communication_smtp_queue_BasicEmailQueue
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
    java_overload :offer, 1
    

    def remove_j1(emailInterface)
        java_monitor.synchronize do
        self.remove(emailInterface)
        end
    end
    

    def remove_j0()
        java_monitor.synchronize do
        return nil
        end
    end

    def remove(*java_overload_args)
        return remove_j1(*java_overload_args) if java_overload_args.length == 1
        return remove_j0(*java_overload_args) if java_overload_args.length == 0
        raise ArgumentError, "No method remove takes #{java_overload_args.length} arguments"
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
    java_overload :post, 1
    

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
    java_overload :processAllUnsent, 0
    

    def send(emailInterface)
        java_monitor.synchronize do
        begin
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().EMAILLOGGING)
                @logUtil.putF("Sending: " + (emailInterface.log()).to_s, self, "send")
            end
            Transport.send(emailInterface.getMimeMessage())
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().EMAILLOGGING)
                @logUtil.putF("Email Send Debug: " + (emailInterface.getDebugInfo()).to_s, self, "send")
            end
            return true
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().EMAILLOGGING)
                @logUtil.put("Failed Email Send Debug: " + (emailInterface.getDebugInfo()).to_s, self, "send", e)
            end
            return false
        end
        end
    end
    java_overload :send, 1

    def self.instance()
        BasicEmailQueue.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        BasicEmailQueue.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.basicEmailQueue()
        BasicEmailQueue.java_static_fields unless @java_static_fields_started
        return defined?(@@basicEmailQueue) ? @@basicEmailQueue : nil
    end

    def self.basicEmailQueue=(value)
        BasicEmailQueue.java_static_fields unless @java_static_fields_started
        @@basicEmailQueue = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = BasicEmailQueue.new()
            @@basicEmailQueue = nil
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BasicEmailQueue"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; autoload :EmailInterface, "org/allbinary/logic/communication/smtp/EmailInterface" unless const_defined?(:EmailInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

begin
    BasicEmailQueue.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

