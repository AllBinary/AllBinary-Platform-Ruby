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
# package org.allbinary.data.tables.user.commerce.money.payment.gateway

require "java/lang/JavaOverload"
require "org/allbinary/data/tables/BasicDataTableInterface"

module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Money; module Payment; module Gateway

module PaymentGatewayEntityInterface
    include ::Org::Allbinary::DataPackage::Tables::BasicDataTableInterface
    

    def getPaymentGatewayInterface(storeName, paymentType)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getPaymentGatewayInterface, 2
    

    def findPaymentTypeVectorByStore(storeName)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :findPaymentTypeVectorByStore, 1
    

    def remove(storeName, paymentType)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :remove, 2
    

    def add(paymentGatewayInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :add, 1
    

    def update(paymentGatewayInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :update, 1
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; autoload :PaymentGatewayInterface, "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayInterface" unless const_defined?(:PaymentGatewayInterface, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Types; autoload :BasicPaymentType, "org/allbinary/business/user/commerce/money/payment/types/BasicPaymentType" unless const_defined?(:BasicPaymentType, false); end; end; end; end; end; end; end; end

end; end; end; end; end; end; end; end; end

