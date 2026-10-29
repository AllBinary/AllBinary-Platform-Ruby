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


class BasicPaymentTypeUtil
    attr_accessor :paymentTypeVector

    def initialize_fields
        @paymentTypeVector = BasicArrayListD.new()
    end
    

    def self.static_init
    end
    

    def self.getInstance()
        return BasicPaymentTypeUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def add(paymentType)
        @paymentTypeVector.add(paymentType)
    end
    

    # throws Exception
    def get(paymentTypeString)
        size = @paymentTypeVector.size()
        (0...size).each do |i|
            paymentType = @paymentTypeVector.get(i)
            if paymentType.getName().compareTo(paymentTypeString) == 0
                return paymentType
            end
        end
        raise StandardError.new("Unknown PaymentType: " + paymentTypeString)
    end
    

    def isContain(paymentType)
        return @paymentTypeVector.contains(paymentType)
    end
    

    def difference(a_PaymentTypeVector)
        diff = BasicArrayListD.new()
        size = @paymentTypeVector.size()
        (0...size).each do |i|
            paymentType = @paymentTypeVector.get(i)
            if !a_PaymentTypeVector.contains(paymentType)
                diff.add(paymentType)
            end
        end
        return diff
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/business/user/commerce/money/payment/types/BasicPaymentType"

class BasicPaymentTypeUtil
    @@instance = BasicPaymentTypeUtil.new()
end

BasicPaymentTypeUtil.static_init

