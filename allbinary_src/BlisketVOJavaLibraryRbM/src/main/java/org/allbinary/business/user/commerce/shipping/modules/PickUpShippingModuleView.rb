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
# package org.allbinary.business.user.commerce.shipping.modules

require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/business/user/commerce/shipping/modules/PickUpShippingModule"

class PickUpShippingModuleView < PickUpShippingModule
    include DomNodeInterface
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def isValid()
        return nil
    end
    

    def toValidationInfoDoc()
        return nil
    end
    

    def toValidationInfoNode(document)
        return nil
    end
    

    def toXmlDoc()
        return nil
    end
    

    def toXmlNode(document)
        begin
            shippingMethodNode = document.createElement(ShippingMethodData::NAME)
            shippingMethodNode.appendChild(ModDomHelper.createNameValueNodes(document, ShippingMethodData::NAME, self.getName()))
            shippingMethodNode.appendChild(ModDomHelper.createNameValueNodes(document, ShippingMethodData::DESCRIPTION, self.getDescription()))
            return shippingMethodNode
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.EXCEPTION, self, "toXmlNode", e)
            end
            return nil
        end
    end
    

    def validationInfo()
        return nil
    end
    

    def view()
        return nil
    end
end

require "org/allbinary/business/user/commerce/shipping/ShippingMethodData"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/w3c/dom/Node"

