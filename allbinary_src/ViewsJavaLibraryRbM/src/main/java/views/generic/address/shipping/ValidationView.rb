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

require "java/lang/JavaOverload"
require "org/allbinary/logic/control/validate/ValidationComponentInterface"
require "views/generic/address/shipping/ShippingAddressesView"

module ::Views; module Generic; module Address; module Shipping

class ValidationView < ShippingAddressesView
    include ::Org::Allbinary::Logic::ControlPackage::Validate::ValidationComponentInterface
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
    end
    

    def isValid()
        billingAddressesEntity = ::Org::Allbinary::DataPackage::Tables::User::Address::Shipping::ShippingAddressesEntity.new(self.getWeblisketSession().getUserName())
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
    java_overload :isValid, 0
    

    def validationInfo()
        return "No Shipping Addresses to display.<br />"
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
        return ValidationView.superclass.java_super_method(:getTransformInfoInterface, 0).bind(self).call()
    end
    java_overload :getTransformInfoInterface, 0
end

module ::Org; module Allbinary; module Business; module User; module Address; autoload :StreetAddress, "org/allbinary/business/user/address/StreetAddress" unless const_defined?(:StreetAddress, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Address; module Shipping; autoload :ShippingAddressesEntity, "org/allbinary/data/tables/user/address/shipping/ShippingAddressesEntity" unless const_defined?(:ShippingAddressesEntity, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end

end; end; end; end

