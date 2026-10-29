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
require "views/generic/address/shipping/ShippingAddressesView"

class ValidationView < ShippingAddressesView
    include ValidationComponentInterface
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
    end
    

    def isValid()
        billingAddressesEntity = ShippingAddressesEntity.new(self.getWeblisketSession().getUserName())
        @streetAddressList = billingAddressesEntity.get()
        if @streetAddressList == nil
            return false
        end
        size = @streetAddressList.size()
        (0...size).each do |index|
            streetAddress = @streetAddressList.get(index)
            if streetAddress.isValid() == false
                @streetAddressList.remove(streetAddress)
            end
        end
        if @streetAddressList.size() < 1
            return false
        end
        return true
    end
    

    def validationInfo()
        return "No Shipping Addresses to display.<br />"
    end
    

    def toValidationInfoDoc()
        return nil
    end
    

    def toValidationInfoNode(document)
        return nil
    end
end

require "org/allbinary/business/user/address/StreetAddress"
require "org/allbinary/data/tables/user/address/shipping/ShippingAddressesEntity"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

