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
# package org.allbinary.business.user.commerce.money.payment.gateway.transaction

require "java/lang/JavaOverload"
require "org/allbinary/data/tables/TableMappingInterface"
require "org/allbinary/data/tree/dom/DomNodeInterface"

module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; module Transaction

module PaymentTransactionInterface
    include ::Org::Allbinary::DataPackage::Tables::TableMappingInterface
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    

    def getOrderHistory()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getOrderHistory, 0
end

module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderHistory, "org/allbinary/business/user/commerce/inventory/order/OrderHistory" unless const_defined?(:OrderHistory, false); end; end; end; end; end; end; end

end; end; end; end; end; end; end; end; end

