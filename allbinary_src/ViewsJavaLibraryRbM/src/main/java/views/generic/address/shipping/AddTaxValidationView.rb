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

require "org/allbinary/logic/control/validate/ValidationComponentInterface"
require "views/generic/address/shipping/ShippingAddressView"

class AddTaxValidationView < ShippingAddressView
    include ValidationComponentInterface
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
    end
    

    # throws Exception
    def isValid()
        begin
            @streetAddress = StreetAddress.new(self.getRequest())
            storeFrontInterface = StoreFrontFactory.getInstance(self.getTransformInfoInterface().getStoreName())
            taxInterface = TaxFactory.getInstance().getInstance(@abeClientInformation, storeFrontInterface)
            if taxInterface == nil
                return false
            end
            if taxInterface.isValid(@streetAddress, storeFrontInterface) == false
                return false
            end
            billingAddressesEntity = ShippingAddressesEntity.new(self.getWeblisketSession().getUserName())
            streetAddressList = billingAddressesEntity.get()
            if streetAddressList == nil
                return false
            end
            size = streetAddressList.size()
            (0...size).each do |index|
                aStreetAddress = streetAddressList.get(index)
                if aStreetAddress.getName().compareTo(ShippingAddressData::TAX) == 0
                    return false
                end
            end
            return true
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to validate", self, @commonStrings.IS_VALID, e)
            end
            return false
        end
    end
    

    # throws Exception
    def validationInfo()
        begin
            stringBuffer = StringMaker.new()
            storeFrontInterface = StoreFrontFactory.getInstance(self.getTransformInfoInterface().getStoreName())
            taxInterface = TaxFactory.getInstance().getInstance(@abeClientInformation, storeFrontInterface)
            if taxInterface == nil
                stringBuffer.append("Unable to Load Tax Component<br/>")
            else
                if taxInterface.isValid(@streetAddress, storeFrontInterface) == false
                    stringBuffer.append("Unable to validate address with Tax Component<br/>")
                end
            end
            billingAddressesEntity = ShippingAddressesEntity.new(self.getWeblisketSession().getUserName())
            streetAddressList = billingAddressesEntity.get()
            size = streetAddressList.size()
            (0...size).each do |index|
                aStreetAddress = streetAddressList.get(index)
                if aStreetAddress.getName().compareTo(ShippingAddressData::TAX) == 0
                    stringBuffer.append("Not a valid tax location<br/>")
                end
            end
            return stringBuffer.to_s
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to create validateInfo", self, "validationInfo()", e)
            end
            return "Error Creating ValidationInfo"
        end
    end
    

    def toValidationInfoDoc()
        return nil
    end
    

    def toValidationInfoNode(document)
        return nil
    end
end

autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :StoreFrontFactory, "org/allbinary/business/context/modules/storefront/StoreFrontFactory"
autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
autoload :ShippingAddressData, "org/allbinary/business/user/address/ShippingAddressData"
autoload :StreetAddress, "org/allbinary/business/user/address/StreetAddress"
autoload :TaxFactory, "org/allbinary/business/user/commerce/money/tax/TaxFactory"
autoload :TaxModuleInterface, "org/allbinary/business/user/commerce/money/tax/modules/TaxModuleInterface"
autoload :ShippingAddressesEntity, "org/allbinary/data/tables/user/address/shipping/ShippingAddressesEntity"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"

