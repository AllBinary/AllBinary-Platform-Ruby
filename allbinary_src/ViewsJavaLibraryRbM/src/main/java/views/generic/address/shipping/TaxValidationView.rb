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

class TaxValidationView < ShippingAddressView
    include ValidationComponentInterface
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
    end
    

    def isValid()
        billingAddressesEntity = ShippingAddressesEntity.new(self.getWeblisketSession().getUserName())
        streetAddressList = billingAddressesEntity.get()
        if streetAddressList == nil
            return false
        end
        size = streetAddressList.size()
        (0...size).each do |index|
            aStreetAddress = streetAddressList.get(index)
            if aStreetAddress.getName().compareTo(ShippingAddressData::TAX) == 0
                @streetAddress = aStreetAddress
                return true
            end
        end
        return false
    end
    

    def validationInfo()
        return StringUtil.getInstance().EMPTY_STRING
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
require "org/allbinary/business/user/address/ShippingAddressData"
require "org/allbinary/business/user/address/StreetAddress"
require "org/allbinary/data/tables/user/address/shipping/ShippingAddressesEntity"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

