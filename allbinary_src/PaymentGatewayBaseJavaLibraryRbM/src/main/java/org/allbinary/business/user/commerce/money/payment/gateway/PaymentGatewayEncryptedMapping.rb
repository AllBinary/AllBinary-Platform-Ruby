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
# package org.allbinary.business.user.commerce.money.payment.gateway

require "org/allbinary/data/tables/TableMappingInterface"

class PaymentGatewayEncryptedMapping
    include TableMappingInterface
    attr_accessor :paymentGatewayInterface

    def initialize_fields
        @paymentGatewayInterface = nil
    end
    

    def initialize(paymentGatewayInterface)
        initialize_fields
        @paymentGatewayInterface = paymentGatewayInterface
    end
    

    # throws Exception
    def toHashMap()
        return @paymentGatewayInterface.toHashMap(true)
    end
    

    def toVector()
        return @paymentGatewayInterface.toVector(true)
    end
    

    # throws Exception
    def getKey()
        return @paymentGatewayInterface.getKey()
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayInterface"

