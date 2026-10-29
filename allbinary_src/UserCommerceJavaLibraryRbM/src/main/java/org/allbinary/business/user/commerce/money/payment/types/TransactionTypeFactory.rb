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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/business/user/commerce/money/payment/types/TransactionType"

class TransactionTypeFactory
    @@instance = TransactionTypeFactory.new()
end

