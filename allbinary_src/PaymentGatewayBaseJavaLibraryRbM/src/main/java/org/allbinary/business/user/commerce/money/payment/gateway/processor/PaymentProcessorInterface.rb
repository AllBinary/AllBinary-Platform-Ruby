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

require "java/lang/JavaOverload"
require "org/allbinary/data/tree/dom/DomNodeInterface"

module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; module Processor

module PaymentProcessorInterface
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    

    # throws PaymentException, Exception
    def process()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :process, 0
end

module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; autoload :PaymentException, "org/allbinary/business/user/commerce/money/payment/PaymentException" unless const_defined?(:PaymentException, false); end; end; end; end; end; end; end

end; end; end; end; end; end; end; end; end

