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

require "java/lang/JavaOverload"
require "org/allbinary/logic/control/validate/ValidationComponentInterface"
require "views/generic/address/billing/BillingAddressView"

module ::Views; module Generic; module Address; module Billing

class EditValidationView < BillingAddressView
    include ::Org::Allbinary::Logic::ControlPackage::Validate::ValidationComponentInterface
    attr_accessor :value

    def jfields_views_generic_address_billing_EditValidationView
        @value = nil unless instance_variable_defined?(:@value)
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        jfields_views_generic_address_billing_EditValidationView
        @value = self.getPageContext().getRequest().getParameter(::Org::Allbinary::Business::User::Address::StreetAddressData::ID)
    end
    

    def isValid()
        if self.getWeblisketSession().getUserName() != nil
            return false
        end
        billingAddressesEntity = ::Org::Allbinary::DataPackage::Tables::User::Address::Billing::BillingAddressesEntity.new(self.getWeblisketSession().getUserName())
        @streetAddress = billingAddressesEntity.get(@value)
        if @streetAddress == nil
            return false
        end
        return @streetAddress.isValid()
    end
    java_overload :isValid, 0
    

    def validationInfo()
        return @streetAddress.validationInfo()
    end
    java_overload :validationInfo, 0
    

    def toValidationInfoDoc()
        return nil
    end
    java_overload :toValidationInfoDoc, 0
    

    def toValidationInfoNode(document)
        return nil
    end
    java_overload :toValidationInfoNode, 1
    

    # throws Exception
    def getTransformInfoInterface()
        return EditValidationView.superclass.java_super_method(:getTransformInfoInterface, 0).bind(self).call()
    end
    java_overload :getTransformInfoInterface, 0
end

module ::Org; module Allbinary; module Business; module User; module Address; autoload :StreetAddressData, "org/allbinary/business/user/address/StreetAddressData" unless const_defined?(:StreetAddressData, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Address; module Billing; autoload :BillingAddressesEntity, "org/allbinary/data/tables/user/address/billing/BillingAddressesEntity" unless const_defined?(:BillingAddressesEntity, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end

end; end; end; end

