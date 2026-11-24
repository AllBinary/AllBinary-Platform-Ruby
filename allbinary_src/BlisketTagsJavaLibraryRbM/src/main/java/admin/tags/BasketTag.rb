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
# package admin.tags

require "java/lang/JavaOverload"
# require "java/lang/reflect/Method"
# require "javax/servlet/jsp/JspTagException"
require "tags/CustomTagSupport"

module ::Admin; module Tags

class BasketTag < ::Tags::CustomTagSupport
    attr_accessor :logUtil, :command, :storeName, :propertiesHashMap

    def jfields_admin_tags_BasketTag
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @command = nil unless instance_variable_defined?(:@command)
        @storeName = nil unless instance_variable_defined?(:@storeName)
        @propertiesHashMap = nil unless instance_variable_defined?(:@propertiesHashMap)
    end
    

    def initialize()
        super()
        jfields_admin_tags_BasketTag
    end
    

    def setCommand(command)
        @command = command
    end
    java_overload :setCommand, 1
    

    def setStoreName(value)
        @storeName = value
    end
    java_overload :setStoreName, 1
    

    # throws LicensingException
    def isBasketEmpty()
        begin
            anyType = ::Admin::Taghelpers::BasketHelperFactory.new().getInstance(@propertiesHashMap, @pageContext)
            method = anyType.class.getMethod("isBasketEmpty", nil)
            emptyBoolean = method.invoke(anyType, nil)
            return emptyBoolean
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            raise e
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "isBasketEmpty()", e)
            end
            return true
        end
    end
    java_overload :isBasketEmpty, 0
    

    # throws LicensingException
    def addItemToBasket()
        begin
            anyType = ::Admin::Taghelpers::BasketRequestHelperFactory.new().getInstance(@propertiesHashMap, @pageContext)
            method = anyType.class.getMethod("addItemToBasket", nil)
            emptyBoolean = method.invoke(anyType, nil)
            return emptyBoolean
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            raise e
        rescue StandardError => e
            error = "Failed to add item from Basket"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "addItemToBasket()", e)
            end
            return false
        end
    end
    java_overload :addItemToBasket, 0
    

    # throws LicensingException
    def removeItemFromBasket()
        begin
            anyType = ::Admin::Taghelpers::BasketRequestHelperFactory.new().getInstance(@propertiesHashMap, @pageContext)
            method = anyType.class.getMethod("removeItemFromBasket", nil)
            emptyBoolean = method.invoke(anyType, nil)
            return emptyBoolean
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            raise e
        rescue StandardError => e
            error = "Failed to remove item from Basket"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "removeItemFromBasket()", e)
            end
            return false
        end
    end
    java_overload :removeItemFromBasket, 0
    

    # throws LicensingException
    def adjustBasket()
        begin
            anyType = ::Admin::Taghelpers::BasketRequestHelperFactory.new().getInstance(@propertiesHashMap, @pageContext)
            method = anyType.class.getMethod("adjustBasket", nil)
            emptyBoolean = method.invoke(anyType, nil)
            return emptyBoolean
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            raise e
        rescue StandardError => e
            error = "Failed to Adjust Basket"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "adjustBasket()", e)
            end
            return false
        end
    end
    java_overload :adjustBasket, 0
    

    # throws JspTagException
    def doStartTag()
        begin
            if @command != nil
                @propertiesHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
                @propertiesHashMap.put(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME, @storeName)
                if (@command <=> ::Org::Allbinary::Business::User::Commerce::Inventory::Basket::BasketData::INSERT) == 0
                    if !self.addItemToBasket()
                        @pageContext.getOut().println("Item is not currently being sold.<p/>")
                    end
                elsif (@command <=> ::Org::Allbinary::Business::User::Commerce::Inventory::Basket::BasketData::DELETE) == 0
                    self.removeItemFromBasket()
                elsif (@command <=> ::Org::Allbinary::Business::User::Commerce::Inventory::Basket::BasketData::ADJUST) == 0
                    self.adjustBasket()
                elsif (@command <=> ::Org::Allbinary::Business::User::Commerce::Inventory::Basket::BasketData::ISEMPTY) == 0
                    if self.isBasketEmpty()
                        return @EVAL_BODY_INCLUDE
                    else
                        return SKIP_BODY
                    end
                end
            end
            return SKIP_BODY
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            ::Org::Allbinary::Logic::Communication::Http::Request::AbResponseHandler.sendJspTagLicensingRedirect(@pageContext, e)
            return SKIP_BODY
        rescue StandardError => e
            ::Org::Allbinary::Logic::Communication::Http::Request::AbResponseHandler.sendJspTagRedirect(@pageContext, e)
            return SKIP_BODY
        end
    end
    java_overload :doStartTag, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Admin; module Taghelpers; autoload :BasketHelperFactory, "admin/taghelpers/BasketHelperFactory" unless const_defined?(:BasketHelperFactory, false); end; end
module ::Admin; module Taghelpers; autoload :BasketRequestHelperFactory, "admin/taghelpers/BasketRequestHelperFactory" unless const_defined?(:BasketRequestHelperFactory, false); end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Basket; autoload :BasketData, "org/allbinary/business/user/commerce/inventory/basket/BasketData" unless const_defined?(:BasketData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :AbResponseHandler, "org/allbinary/logic/communication/http/request/AbResponseHandler" unless const_defined?(:AbResponseHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LicensingException, "org/allbinary/logic/system/security/licensing/LicensingException" unless const_defined?(:LicensingException, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end

