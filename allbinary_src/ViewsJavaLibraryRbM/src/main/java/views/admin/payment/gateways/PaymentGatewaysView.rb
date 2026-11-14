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
# package views.admin.payment.gateways

require "org/allbinary/data/tree/dom/DomNodeInterface"
require "views/business/context/modules/storefront/HttpStoreComponentView"

class PaymentGatewaysView < HttpStoreComponentView
    include DomNodeInterface
    attr_accessor :logUtil, :paymentGatewayVector

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @paymentGatewayVector = nil
    end
    

    def initialize(transformInfoInterface, gatewayVector)
        super(transformInfoInterface)
        initialize_fields
        @paymentGatewayVector = gatewayVector
    end
    

    # throws Exception
    def toXmlNode(document)
        begin
            storeName = self.getTransformInfoInterface().getStoreName()
            paymentGatewaysNode = document.createElement(PaymentGatewaysData::NAME)
            size = @paymentGatewayVector.size()
            (0...size).each do |index|
                paymentType = @paymentGatewayVector.get(index)
                hashMap = paymentType.toHashMap()
                hashMap.put(EntryData.getInstance().DEFAULT, PaymentTypeUtil.getInstance().getDefault(storeName).getBasicPaymentType().getName())
                paymentGatewayNode = ModDomHelper.createNodeWithValueNodes(document, PaymentGatewayData::NAME.to_s, hashMap)
                paymentGatewaysNode.appendChild(paymentGatewayNode)
            end
            return paymentGatewaysNode
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().XSLLOGGINGERROR)
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
            error = "Failed to view payment gateways"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            return error
        end
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :EntryData, "org/allbinary/business/entry/EntryData"
autoload :PaymentGatewayData, "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayData"
autoload :PaymentGatewaysData, "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewaysData"
autoload :BasicPaymentType, "org/allbinary/business/user/commerce/money/payment/types/BasicPaymentType"
autoload :PaymentTypeUtil, "org/allbinary/business/user/commerce/money/payment/types/PaymentTypeUtil"
autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"

