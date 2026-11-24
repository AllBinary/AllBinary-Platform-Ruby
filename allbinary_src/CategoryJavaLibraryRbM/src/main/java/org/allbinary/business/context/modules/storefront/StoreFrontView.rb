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
# package org.allbinary.business.context.modules.storefront

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/data/tree/dom/DomNodeInterface"

module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront

class StoreFrontView
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :logUtil, :storeFrontInterface

    def jfields_org_allbinary_business_context_modules_storefront_StoreFrontView
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @storeFrontInterface = nil unless instance_variable_defined?(:@storeFrontInterface)
    end
    

    def initialize(storeFrontInterface)
        jfields_org_allbinary_business_context_modules_storefront_StoreFrontView
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.putF("Constructing: StoreFrontView for: " + storeFrontInterface.getName(), self, commonStrings.GET_INSTANCE)
        end
        @storeFrontInterface = storeFrontInterface
    end
    

    # throws Exception
    def toXmlNode(document)
        hashMap = @storeFrontInterface.toHashMap()
        storeFrontData = StoreFrontData.getInstance()
        hashMap.put(storeFrontData.CURRENTHOMEHOSTNAME, @storeFrontInterface.getCurrentHomeHostName())
        hashMap.put(storeFrontData.CURRENTHOMEHOSTNAMEPATH, @storeFrontInterface.getCurrentHomeHostNamePath())
        hashMap.put(storeFrontData.CURRENTHOSTNAME, @storeFrontInterface.getCurrentHostName())
        hashMap.put(storeFrontData.CURRENTHOSTNAMEPATH, @storeFrontInterface.getCurrentHostNamePath())
        hashMap.put(::Org::Allbinary::Business::User::Commerce::Inventory::Basket::BasketData::NAME, @storeFrontInterface.getBasketName())
        node = ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, storeFrontData.NAME, hashMap)
        return node
    end
    java_overload :toXmlNode, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Basket; autoload :BasketData, "org/allbinary/business/user/commerce/inventory/basket/BasketData" unless const_defined?(:BasketData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false)
autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false)

end; end; end; end; end; end

