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


class PaymentType
    attr_accessor :basicPaymentType, :paymentTransactionInterfaceFactoryInterface, :paymentProcessorInterfaceFactoryInterface

    def initialize_fields
        @basicPaymentType = nil
        @paymentTransactionInterfaceFactoryInterface = nil
        @paymentProcessorInterfaceFactoryInterface = nil
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 3 then constructor3(*args)
        end
    end
    

    def constructor1(basicPaymentType)
        initialize_fields
        @basicPaymentType = basicPaymentType
        @paymentTransactionInterfaceFactoryInterface = nil
        @paymentProcessorInterfaceFactoryInterface = nil
        PaymentTypeUtil.getInstance().add(self)
    end
    

    def constructor3(basicPaymentType, paymentTransactionInterfaceFactoryInterface, paymentProcessorInterfaceFactoryInterface)
        initialize_fields
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
        vector = BasicArrayListD.new()
        vector.addAllList(self.getBasicPaymentType().toVector())
        if @paymentTransactionInterfaceFactoryInterface != nil
            vector.add(@paymentTransactionInterfaceFactoryInterface.class.name)
        end
        if @paymentProcessorInterfaceFactoryInterface != nil
            vector.add(@paymentProcessorInterfaceFactoryInterface.class.name)
        end
        return vector
    end
    

    def toHashMap()
        hashMap = StdUtil.getInstance().createHashMap()
        hashMap.putAll(self.getBasicPaymentType().toHashMap())
        if @paymentTransactionInterfaceFactoryInterface != nil
            hashMap.put(PaymentGatewayData::PAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE.to_s, @paymentTransactionInterfaceFactoryInterface.class.name)
        end
        if @paymentProcessorInterfaceFactoryInterface != nil
            hashMap.put(PaymentGatewayData::PAYMENTPROCESSORINTERFACEFACTORYINTERFACE.to_s, @paymentProcessorInterfaceFactoryInterface.class.name)
        end
        return hashMap
    end
    

    def getBasicPaymentType()
        return @basicPaymentType
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayData"
require "org/allbinary/business/user/commerce/money/payment/gateway/processor/PaymentProcessorInterfaceFactoryInterface"
require "org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionInterfaceFactoryInterface"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/business/user/commerce/money/payment/types/BasicPaymentType"
require "org/allbinary/business/user/commerce/money/payment/types/PaymentTypeUtil"

