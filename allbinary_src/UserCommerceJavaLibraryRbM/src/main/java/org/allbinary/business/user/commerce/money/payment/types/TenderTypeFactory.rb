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


class TenderTypeFactory
    attr_accessor :CREDITCARD, :CHECK, :ACH

    def initialize_fields
        @CREDITCARD = TenderType.new("Credit Card")
        @CHECK = TenderType.new("Check")
        @ACH = TenderType.new("Ach")
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return TenderTypeFactory.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/business/user/commerce/money/payment/types/TenderType"

class TenderTypeFactory
    @@instance = TenderTypeFactory.new()
end

