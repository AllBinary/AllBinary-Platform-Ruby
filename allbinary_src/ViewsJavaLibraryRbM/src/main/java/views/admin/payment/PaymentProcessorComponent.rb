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
# package views.admin.payment

require "views/business/context/modules/storefront/HttpStoreComponentView"

class PaymentProcessorComponent < HttpStoreComponentView
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
    end
    

    # throws Exception
    def addDomNodeInterfaces()
        paymentProcessorInterface = PaymentProcessorInterfaceFactory.getInstance().getInstance(self.getTransformInfoInterface())
        paymentProcessorInterface.process()
        httpTransformInfoInterface = self.getTransformInfoInterface()
        httpTransformInfoInterface.getWeblisketSession().removeBasket()
        self.addDomNodeInterface(paymentProcessorInterface)
    end
    

    # throws Exception
    def view()
        begin
            self.addDomNodeInterfaces()
            return super()
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            raise e
        end
    end
end

require "org/allbinary/business/user/commerce/money/payment/gateway/processor/PaymentProcessorInterface"
require "org/allbinary/business/user/commerce/money/payment/gateway/processor/PaymentProcessorInterfaceFactory"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"

