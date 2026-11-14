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
        BasicPaymentTypeUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        BasicPaymentTypeUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = BasicPaymentTypeUtil.new()
            static_init
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BasicPaymentTypeUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :BasicPaymentType, "org/allbinary/business/user/commerce/money/payment/types/BasicPaymentType"

begin
    BasicPaymentTypeUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

