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
require "java/lang/JavaClass"
require "org/allbinary/logic/control/validate/ValidationComponentInterface"
require "views/generic/address/shipping/ShippingAddressView"

module ::Views; module Generic; module Address; module Shipping

class AddTaxValidationView < ShippingAddressView
    include ::Org::Allbinary::Logic::ControlPackage::Validate::ValidationComponentInterface
    attr_accessor :logUtil

    def jfields_views_generic_address_shipping_AddTaxValidationView
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        jfields_views_generic_address_shipping_AddTaxValidationView
    end
    

    # throws Exception
    def isValid()
        begin
            @streetAddress = ::Org::Allbinary::Business::User::Address::StreetAddress.new(self.getRequest())
            storeFrontInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontFactory.getInstance(self.getTransformInfoInterface().getStoreName())
            taxInterface = ::Org::Allbinary::Business::User::Commerce::Money::Tax::TaxFactory.getInstance().getInstance(@abeClientInformation, storeFrontInterface)
            if taxInterface == nil
                return false
            end
            if taxInterface.isValid(@streetAddress, storeFrontInterface) == false
                return false
            end
            billingAddressesEntity = ::Org::Allbinary::DataPackage::Tables::User::Address::Shipping::ShippingAddressesEntity.new(self.getWeblisketSession().getUserName())
            streetAddressList = billingAddressesEntity.get()
            if streetAddressList == nil
                return false
            end
            size = streetAddressList.size()
            (0...size).each do |index|
                aStreetAddress = streetAddressList.get(index)
                if aStreetAddress.getName().compareTo(::Org::Allbinary::Business::User::Address::ShippingAddressData::TAX) == 0
                    return false
                end
            end
            return true
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to validate", self, @commonStrings.IS_VALID, e)
            end
            return false
        end
    end
    java_overload :isValid, 0
    

    # throws Exception
    def validationInfo()
        begin
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            storeFrontInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontFactory.getInstance(self.getTransformInfoInterface().getStoreName())
            taxInterface = ::Org::Allbinary::Business::User::Commerce::Money::Tax::TaxFactory.getInstance().getInstance(@abeClientInformation, storeFrontInterface)
            if taxInterface == nil
                stringBuffer.append("Unable to Load Tax Component<br/>")
            else
                if taxInterface.isValid(@streetAddress, storeFrontInterface) == false
                    stringBuffer.append("Unable to validate address with Tax Component<br/>")
                end
            end
            billingAddressesEntity = ::Org::Allbinary::DataPackage::Tables::User::Address::Shipping::ShippingAddressesEntity.new(self.getWeblisketSession().getUserName())
            streetAddressList = billingAddressesEntity.get()
            size = streetAddressList.size()
            (0...size).each do |index|
                aStreetAddress = streetAddressList.get(index)
                if aStreetAddress.getName().compareTo(::Org::Allbinary::Business::User::Address::ShippingAddressData::TAX) == 0
                    stringBuffer.append("Not a valid tax location<br/>")
                end
            end
            return stringBuffer.to_s
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to create validateInfo", self, "validationInfo()", e)
            end
            return "Error Creating ValidationInfo"
        end
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
        return AddTaxValidationView.superclass.java_super_method(:getTransformInfoInterface, 0).bind(self).call()
    end
    java_overload :getTransformInfoInterface, 0
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontFactory, "org/allbinary/business/context/modules/storefront/StoreFrontFactory" unless const_defined?(:StoreFrontFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Address; autoload :ShippingAddressData, "org/allbinary/business/user/address/ShippingAddressData" unless const_defined?(:ShippingAddressData, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Address; autoload :StreetAddress, "org/allbinary/business/user/address/StreetAddress" unless const_defined?(:StreetAddress, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Tax; autoload :TaxFactory, "org/allbinary/business/user/commerce/money/tax/TaxFactory" unless const_defined?(:TaxFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Tax; module Modules; autoload :TaxModuleInterface, "org/allbinary/business/user/commerce/money/tax/modules/TaxModuleInterface" unless const_defined?(:TaxModuleInterface, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Address; module Shipping; autoload :ShippingAddressesEntity, "org/allbinary/data/tables/user/address/shipping/ShippingAddressesEntity" unless const_defined?(:ShippingAddressesEntity, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end

