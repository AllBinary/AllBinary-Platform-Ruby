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

class PaymentType
    attr_accessor :basicPaymentType, :paymentTransactionInterfaceFactoryInterface, :paymentProcessorInterfaceFactoryInterface

    def jfields_org_allbinary_business_user_commerce_money_payment_types_PaymentType
        @basicPaymentType = nil unless instance_variable_defined?(:@basicPaymentType)
        @paymentTransactionInterfaceFactoryInterface = nil unless instance_variable_defined?(:@paymentTransactionInterfaceFactoryInterface)
        @paymentProcessorInterfaceFactoryInterface = nil unless instance_variable_defined?(:@paymentProcessorInterfaceFactoryInterface)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_business_user_commerce_money_payment_types_PaymentType_1(*args)
        when 3 then jnew_org_allbinary_business_user_commerce_money_payment_types_PaymentType_3(*args)
        else raise ArgumentError, "No constructor of PaymentType takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_business_user_commerce_money_payment_types_PaymentType_1(basicPaymentType)
        jfields_org_allbinary_business_user_commerce_money_payment_types_PaymentType
        @basicPaymentType = basicPaymentType
        @paymentTransactionInterfaceFactoryInterface = nil
        @paymentProcessorInterfaceFactoryInterface = nil
        PaymentTypeUtil.getInstance().add(self)
    end
    

    def jnew_org_allbinary_business_user_commerce_money_payment_types_PaymentType_3(basicPaymentType, paymentTransactionInterfaceFactoryInterface, paymentProcessorInterfaceFactoryInterface)
        jfields_org_allbinary_business_user_commerce_money_payment_types_PaymentType
        @basicPaymentType = basicPaymentType
        @paymentTransactionInterfaceFactoryInterface = paymentTransactionInterfaceFactoryInterface
        @paymentProcessorInterfaceFactoryInterface = paymentProcessorInterfaceFactoryInterface
        PaymentTypeUtil.getInstance().add(self)
    end
    

    # throws Exception
    def getPaymentTransactionInterfaceFactoryInterface()
        if @paymentTransactionInterfaceFactoryInterface == nil
            raise StandardError.new("PaymentTransactionInterfaceFactoryInterface is Null")
        end
        return @paymentTransactionInterfaceFactoryInterface
    end
    

    # throws Exception
    def getPaymentProcessorInterfaceFactoryInterface()
        if @paymentProcessorInterfaceFactoryInterface == nil
            raise StandardError.new("PaymentProcessorInterfaceFactoryInterface is Null")
        end
        return @paymentProcessorInterfaceFactoryInterface
    end
    

    def toVector()
        vector = ::Org::Allbinary::Util::BasicArrayListD.new()
        vector.addAllList(self.getBasicPaymentType().toVector())
        if @paymentTransactionInterfaceFactoryInterface != nil
            vector.add(@paymentTransactionInterfaceFactoryInterface.class.java_name)
        end
        if @paymentProcessorInterfaceFactoryInterface != nil
            vector.add(@paymentProcessorInterfaceFactoryInterface.class.java_name)
        end
        return vector
    end
    

    def toHashMap()
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        hashMap.putAll(self.getBasicPaymentType().toHashMap())
        if @paymentTransactionInterfaceFactoryInterface != nil
            hashMap.put(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::PAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE.to_s, @paymentTransactionInterfaceFactoryInterface.class.java_name)
        end
        if @paymentProcessorInterfaceFactoryInterface != nil
            hashMap.put(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::PAYMENTPROCESSORINTERFACEFACTORYINTERFACE.to_s, @paymentProcessorInterfaceFactoryInterface.class.java_name)
        end
        return hashMap
    end
    

    def getBasicPaymentType()
        return @basicPaymentType
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; autoload :PaymentGatewayData, "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayData" unless const_defined?(:PaymentGatewayData, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; module Processor; autoload :PaymentProcessorInterfaceFactoryInterface, "org/allbinary/business/user/commerce/money/payment/gateway/processor/PaymentProcessorInterfaceFactoryInterface" unless const_defined?(:PaymentProcessorInterfaceFactoryInterface, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; module Transaction; autoload :PaymentTransactionInterfaceFactoryInterface, "org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionInterfaceFactoryInterface" unless const_defined?(:PaymentTransactionInterfaceFactoryInterface, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
autoload :BasicPaymentType, "org/allbinary/business/user/commerce/money/payment/types/BasicPaymentType" unless const_defined?(:BasicPaymentType, false)
autoload :PaymentTypeUtil, "org/allbinary/business/user/commerce/money/payment/types/PaymentTypeUtil" unless const_defined?(:PaymentTypeUtil, false)

end; end; end; end; end; end; end; end

