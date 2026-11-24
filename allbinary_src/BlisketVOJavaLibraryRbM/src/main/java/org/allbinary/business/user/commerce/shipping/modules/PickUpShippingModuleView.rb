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
# package org.allbinary.business.user.commerce.shipping.modules

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/business/user/commerce/shipping/modules/PickUpShippingModule"

module ::Org; module Allbinary; module Business; module User; module Commerce; module Shipping; module Modules

class PickUpShippingModuleView < PickUpShippingModule
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :logUtil

    def jfields_org_allbinary_business_user_commerce_shipping_modules_PickUpShippingModuleView
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize()
        super()
        jfields_org_allbinary_business_user_commerce_shipping_modules_PickUpShippingModuleView
    end
    

    def isValid()
        return nil
    end
    java_overload :isValid, 0
    

    def toValidationInfoDoc()
        return nil
    end
    java_overload :toValidationInfoDoc, 0
    

    def toValidationInfoNode(document)
        return nil
    end
    java_overload :toValidationInfoNode, 1
    

    def toXmlDoc()
        return nil
    end
    java_overload :toXmlDoc, 0
    

    def toXmlNode(document)
        begin
            shippingMethodNode = document.createElement(::Org::Allbinary::Business::User::Commerce::Shipping::ShippingMethodData::NAME)
            shippingMethodNode.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, ::Org::Allbinary::Business::User::Commerce::Shipping::ShippingMethodData::NAME, self.getName()))
            shippingMethodNode.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, ::Org::Allbinary::Business::User::Commerce::Shipping::ShippingMethodData::DESCRIPTION, self.getDescription()))
            return shippingMethodNode
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.EXCEPTION, self, "toXmlNode", e)
            end
            return nil
        end
    end
    java_overload :toXmlNode, 1
    

    def validationInfo()
        return nil
    end
    java_overload :validationInfo, 0
    

    def view()
        return nil
    end
    java_overload :view, 0
end

module ::Org; module Allbinary; module Business; module User; module Commerce; module Shipping; autoload :ShippingMethodData, "org/allbinary/business/user/commerce/shipping/ShippingMethodData" unless const_defined?(:ShippingMethodData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end

end; end; end; end; end; end; end

