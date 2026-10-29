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

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/context/modules/storefront/StoreFrontFactory"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/business/user/address/ShippingAddressData"
require "org/allbinary/business/user/address/StreetAddress"
require "org/allbinary/business/user/commerce/money/tax/TaxFactory"
require "org/allbinary/data/tables/user/address/shipping/ShippingAddressesEntity"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

