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
# package views.generic.address.billing

require "org/allbinary/logic/control/validate/ValidationComponentInterface"
require "views/generic/address/billing/BillingAddressView"

class EditValidationView < BillingAddressView
    include ValidationComponentInterface
    attr_accessor :value

    def initialize_fields
        @value = nil
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
        @value = self.getPageContext().getRequest().getParameter(StreetAddressData::ID)
    end
    

    def isValid()
        if self.getWeblisketSession().getUserName() != nil
            return false
        end
        billingAddressesEntity = BillingAddressesEntity.new(self.getWeblisketSession().getUserName())
        @streetAddress = billingAddressesEntity.get(@value)
        if @streetAddress == nil
            return false
        end
        return @streetAddress.isValid()
    end
    

    def validationInfo()
        return @streetAddress.validationInfo()
    end
    

    def toValidationInfoDoc()
        return nil
    end
    

    def toValidationInfoNode(document)
        return nil
    end
end

require "org/allbinary/business/user/address/StreetAddressData"
require "org/allbinary/data/tables/user/address/billing/BillingAddressesEntity"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

