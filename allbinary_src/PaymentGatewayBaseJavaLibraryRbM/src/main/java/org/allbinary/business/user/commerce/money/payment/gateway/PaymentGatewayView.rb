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
# package org.allbinary.business.user.commerce.money.payment.gateway

require "org/allbinary/data/tree/dom/DomNodeInterface"

class PaymentGatewayView
    include DomNodeInterface
    attr_accessor :logUtil, :commonStrings, :paymentGatewayInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @paymentGatewayInterface = nil
    end
    

    def initialize(paymentGatewayInterface)
        initialize_fields
        @paymentGatewayInterface = paymentGatewayInterface
    end
    

    def getPaymentGatewayInterface()
        return @paymentGatewayInterface
    end
    

    # throws Exception
    def toHashMap()
        hashMap = StdUtil.getInstance().createHashMap()
        return hashMap
    end
    

    # throws Exception
    def toXmlNode(document)
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF(@commonStrings.START, self, "toXmlNode")
            end
            hashMap = PaymentGatewayMapping.new(@paymentGatewayInterface).toHashMap()
            hashMap.putAll(self.toHashMap())
            paymentGatewayNode = ModDomHelper.createNodeWithValueNodes(document, PaymentGatewayData::NAME.to_s, hashMap)
            return paymentGatewayNode
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().XSLLOGGINGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "toXmlNode", e)
            end
            raise e
        end
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"
autoload :PaymentGatewayData, "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayData"
autoload :PaymentGatewayInterface, "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayInterface"
autoload :PaymentGatewayMapping, "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayMapping"

