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
# package org.allbinary.business.user.commerce.money.payment.gateway.processor


module PaymentProcessorInterfaceFactoryInterface
    

    # throws Exception
    def getInstance(transformInfoInterface, paymentTransactionInterface)
        raise NotImplementedError
    end
end

autoload :PaymentTransactionInterface, "org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionInterface"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :PaymentProcessorInterface, "org/allbinary/business/user/commerce/money/payment/gateway/processor/PaymentProcessorInterface"

