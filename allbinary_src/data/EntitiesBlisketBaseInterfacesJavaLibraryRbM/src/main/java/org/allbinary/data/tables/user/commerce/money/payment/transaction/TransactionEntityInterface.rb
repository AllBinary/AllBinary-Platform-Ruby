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
# package org.allbinary.data.tables.user.commerce.money.payment.transaction

require "java/lang/JavaOverload"
require "org/allbinary/data/tables/BasicDataTableInterface"

module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Money; module Payment; module Transaction

module TransactionEntityInterface
    include ::Org::Allbinary::DataPackage::Tables::BasicDataTableInterface
    

    def remove(userName, orderNumber)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :remove, 2
    

    def add(userName, orderNumber, paymentTransactionInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :add, 3
end

module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; module Transaction; autoload :PaymentTransactionInterface, "org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionInterface" unless const_defined?(:PaymentTransactionInterface, false); end; end; end; end; end; end; end; end; end

end; end; end; end; end; end; end; end; end

