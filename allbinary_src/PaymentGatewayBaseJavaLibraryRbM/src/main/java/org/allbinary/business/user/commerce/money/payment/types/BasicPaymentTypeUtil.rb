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

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Types

class BasicPaymentTypeUtil
    attr_accessor :paymentTypeVector

    def jfields_org_allbinary_business_user_commerce_money_payment_types_BasicPaymentTypeUtil
        @paymentTypeVector = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def self.static_init
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_business_user_commerce_money_payment_types_BasicPaymentTypeUtil
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
        diff = ::Org::Allbinary::Util::BasicArrayListD.new()
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

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
autoload :BasicPaymentType, "org/allbinary/business/user/commerce/money/payment/types/BasicPaymentType" unless const_defined?(:BasicPaymentType, false)

begin
    BasicPaymentTypeUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end

