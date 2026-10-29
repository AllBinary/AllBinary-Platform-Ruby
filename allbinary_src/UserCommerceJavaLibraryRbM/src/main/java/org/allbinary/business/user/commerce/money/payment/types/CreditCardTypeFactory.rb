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


class CreditCardTypeFactory
    attr_accessor :VISA, :MASTERCARD, :DISCOVER, :AMERICANEXPRESS

    def initialize_fields
        @VISA = CreditCardType.new("Visa")
        @MASTERCARD = CreditCardType.new("MasterCard")
        @DISCOVER = CreditCardType.new("Discover")
        @AMERICANEXPRESS = CreditCardType.new("AMX")
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return CreditCardTypeFactory.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/business/user/commerce/money/payment/types/CreditCardType"

class CreditCardTypeFactory
    @@instance = CreditCardTypeFactory.new()
end

