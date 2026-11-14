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
# package views.generic.payment

require "org/allbinary/data/tree/dom/DomNodeInterface"
require "views/business/context/modules/storefront/HttpStoreComponentView"

class PaymentView < HttpStoreComponentView
    include DomNodeInterface
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
    end
    

    # throws Exception
    def toXmlNode(document)
        begin
            paymentNode = document.createElement(PaymentData::PAYMENT)
            document.appendChild(paymentNode)
            paymentVector = PaymentEntityFactory.getInstance().getPaymentEntityInstance().get(self.getWeblisketSession().getUserName())
            size = paymentVector.size()
            (0...size).each do |index|
                payment = paymentVector.get(index)
                paymentNode.appendChild(payment.toXmlNode(document))
            end
            return paymentNode
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "toXmlNode", e)
            end
            raise e
        end
    end
    

    def addDomNodeInterfaces()
        self.addDomNodeInterface(self)
    end
    

    def view()
        begin
            self.addDomNodeInterfaces()
            return super()
        rescue StandardError => e
            error = "Failed to view Payment"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            return error
        end
    end
end

autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :Payment, "org/allbinary/business/user/commerce/money/payment/Payment"
autoload :PaymentData, "org/allbinary/business/user/commerce/money/payment/PaymentData"
autoload :PaymentEntityFactory, "org/allbinary/data/tables/user/commerce/money/payment/PaymentEntityFactory"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"

