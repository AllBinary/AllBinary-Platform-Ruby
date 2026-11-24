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


module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; module Processor

module PaymentProcessorInterfaceFactoryInterface
    

    # throws Exception
    def getInstance(transformInfoInterface, paymentTransactionInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; module Transaction; autoload :PaymentTransactionInterface, "org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionInterface" unless const_defined?(:PaymentTransactionInterface, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
autoload :PaymentProcessorInterface, "org/allbinary/business/user/commerce/money/payment/gateway/processor/PaymentProcessorInterface" unless const_defined?(:PaymentProcessorInterface, false)

end; end; end; end; end; end; end; end; end

