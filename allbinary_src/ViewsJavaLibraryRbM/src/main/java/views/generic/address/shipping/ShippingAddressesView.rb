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
# package views.generic.address.shipping

# require "javax/servlet/http/HttpServletRequest"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "views/business/context/modules/storefront/HttpStoreComponentView"

class ShippingAddressesView < HttpStoreComponentView
    include DomNodeInterface
    attr_accessor :logUtil, :request, :streetAddressList

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @request = nil
        @streetAddressList = nil
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
        httpTransformInfoInterface = self.getTransformInfoInterface()
        @request = httpTransformInfoInterface.getPageContext().getRequest()
    end
    

    def getRequest()
        return @request
    end
    

    # throws Exception
    def toXmlNode(document)
        begin
            billingAddressesNode = document.createElement(ShippingAddressData::MULTIPLE)
            size = @streetAddressList.size()
            (0...size).each do |index|
                streetAddress = @streetAddressList.get(index)
                billingAddressesNode.appendChild(streetAddress.toXmlNode(document))
            end
            billingAddressesNode.appendChild(ModDomHelper.createNameValueNodes(document, StreetAddressData::NUMBEROFADDRESSES, @streetAddressList.size().to_s))
            return billingAddressesNode
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
    

    # throws Exception
    def view()
        begin
            self.addDomNodeInterfaces()
            return super()
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            raise e
        end
    end
end

autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :ShippingAddressData, "org/allbinary/business/user/address/ShippingAddressData"
autoload :StreetAddress, "org/allbinary/business/user/address/StreetAddress"
autoload :StreetAddressData, "org/allbinary/business/user/address/StreetAddressData"
autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :TransformInfoHttpInterface, "org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"

