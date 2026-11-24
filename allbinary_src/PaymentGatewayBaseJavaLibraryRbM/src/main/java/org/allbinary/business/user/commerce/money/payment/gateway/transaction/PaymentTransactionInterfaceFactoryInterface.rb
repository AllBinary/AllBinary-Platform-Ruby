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


module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; module Transaction

module PaymentTransactionInterfaceFactoryInterface
    

    # throws Exception
    def getInstance(orderHistory)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def getSaleTransaction(tenderType)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def getCreditTransaction(tenderType)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def getAuthorizationTransaction(tenderType)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def getCaptureDelayedTransaction(tenderType)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def getVoidTransaction(tenderType)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def getInquiryTransaction(tenderType)
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderHistory, "org/allbinary/business/user/commerce/inventory/order/OrderHistory" unless const_defined?(:OrderHistory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Types; autoload :TenderType, "org/allbinary/business/user/commerce/money/payment/types/TenderType" unless const_defined?(:TenderType, false); end; end; end; end; end; end; end; end
autoload :PaymentTransactionInterface, "org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionInterface" unless const_defined?(:PaymentTransactionInterface, false)

end; end; end; end; end; end; end; end; end

