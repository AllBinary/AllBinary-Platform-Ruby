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
# package org.allbinary.business.user.commerce.money.payment.types


class TransactionTypeFactory
    attr_accessor :SALE, :CREDIT, :AUTHORIZATION, :DELAYEDCAPTURE, :VOID, :INQUIRY

    def initialize_fields
        @SALE = TransactionType.new("Sale")
        @CREDIT = TransactionType.new("Credit")
        @AUTHORIZATION = TransactionType.new("Authorization")
        @DELAYEDCAPTURE = TransactionType.new("Delayed Capture")
        @VOID = TransactionType.new("Void")
        @INQUIRY = TransactionType.new("Inquiry")
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return TransactionTypeFactory.instance
    end

    def self.instance()
        TransactionTypeFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        TransactionTypeFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = TransactionTypeFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TransactionTypeFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :TransactionType, "org/allbinary/business/user/commerce/money/payment/types/TransactionType"

begin
    TransactionTypeFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

