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


module PaymentTransactionInterfaceFactoryInterface
    

    # throws Exception
    def getInstance(orderHistory)
        raise NotImplementedError
    end
    

    # throws Exception
    def getSaleTransaction(tenderType)
        raise NotImplementedError
    end
    

    # throws Exception
    def getCreditTransaction(tenderType)
        raise NotImplementedError
    end
    

    # throws Exception
    def getAuthorizationTransaction(tenderType)
        raise NotImplementedError
    end
    

    # throws Exception
    def getCaptureDelayedTransaction(tenderType)
        raise NotImplementedError
    end
    

    # throws Exception
    def getVoidTransaction(tenderType)
        raise NotImplementedError
    end
    

    # throws Exception
    def getInquiryTransaction(tenderType)
        raise NotImplementedError
    end
end

require "org/allbinary/business/user/commerce/inventory/order/OrderHistory"
require "org/allbinary/business/user/commerce/money/payment/types/TenderType"
require "org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionInterface"

