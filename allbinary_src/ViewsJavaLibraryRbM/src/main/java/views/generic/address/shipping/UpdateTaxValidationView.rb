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

class UpdateTaxValidationView < ShippingAddressView
    include ValidationComponentInterface
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
    end
    

    # throws Exception
    def isValid()
        @streetAddress = StreetAddress.new(self.getRequest())
        storeFrontInterface = StoreFrontFactory.getInstance(self.getTransformInfoInterface().getStoreName())
        if TaxFactory.getInstance().getInstance(@abeClientInformation, storeFrontInterface).isValid(@streetAddress, storeFrontInterface) == false
            return false
        end
        billingAddressesEntity = ShippingAddressesEntity.new(self.getWeblisketSession().getUserName())
        streetAddressList = billingAddressesEntity.get()
        if streetAddressList == nil
            return false
        end
        count = 0
        size = streetAddressList.size()
        (0...size).each do |index|
            aStreetAddress = streetAddressList.get(index)
            if aStreetAddress.getName().compareTo(ShippingAddressData::TAX) == 0
                count += 1
            end
        end
        if count != 1
            return false
        end
        return true
    end
    

    def validationInfo()
        return "Unable to update tax location."
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
autoload :ShippingAddressesEntity, "org/allbinary/data/tables/user/address/shipping/ShippingAddressesEntity"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"

