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
# package views.admin.payment.gateway

require "views/business/context/modules/storefront/HttpStoreComponentView"

class PaymentGatewayComponent < HttpStoreComponentView
    attr_accessor :logUtil, :paymentGatewayInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @paymentGatewayInterface = nil
    end
    

    def initialize(transformInfoInterface, paymentGatewayInterface)
        super(transformInfoInterface)
        initialize_fields
        @paymentGatewayInterface = paymentGatewayInterface
    end
    

    # throws Exception
    def addDomNodeInterfaces()
        paymentType = BasicPaymentTypeUtil.getInstance().get(@paymentGatewayInterface.getName())
        paymentGatewayDomNodeFactoryInterface = paymentType.getPaymentGatewayDomNodeFactoryInterface()
        domNodeInterface = paymentGatewayDomNodeFactoryInterface.getInstance(@paymentGatewayInterface)
        self.addDomNodeInterface(domNodeInterface)
    end
    

    def view()
        begin
            self.addDomNodeInterfaces()
            return super()
        rescue StandardError => e
            error = "Failed to view payment gateway"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            return error
        end
    end
end

require "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayInterface"
require "org/allbinary/business/user/commerce/money/payment/gateway/modules/gateway/PaymentGatewayDomNodeFactoryInterface"
require "org/allbinary/business/user/commerce/money/payment/types/BasicPaymentType"
require "org/allbinary/business/user/commerce/money/payment/types/BasicPaymentTypeUtil"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"

