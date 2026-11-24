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

require "java/lang/JavaOverload"
require "org/allbinary/data/tables/TableMappingInterface"

module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway

class PaymentGatewayMapping
    include ::Org::Allbinary::DataPackage::Tables::TableMappingInterface
    attr_accessor :paymentGatewayInterface

    def jfields_org_allbinary_business_user_commerce_money_payment_gateway_PaymentGatewayMapping
        @paymentGatewayInterface = nil unless instance_variable_defined?(:@paymentGatewayInterface)
    end
    

    def initialize(paymentGatewayInterface)
        jfields_org_allbinary_business_user_commerce_money_payment_gateway_PaymentGatewayMapping
        @paymentGatewayInterface = paymentGatewayInterface
    end
    

    # throws Exception
    def toHashMap()
        return @paymentGatewayInterface.toHashMap(false)
    end
    java_overload :toHashMap, 0
    

    def toVector()
        return @paymentGatewayInterface.toVector(false)
    end
    java_overload :toVector, 0
    

    # throws Exception
    def getKey()
        return @paymentGatewayInterface.getKey()
    end
    java_overload :getKey, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :PaymentGatewayInterface, "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayInterface" unless const_defined?(:PaymentGatewayInterface, false)

end; end; end; end; end; end; end; end

