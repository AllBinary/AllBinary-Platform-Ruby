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
# package admin.taghelpers

require "java/lang/JavaOverload"
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/TagHelper"

module ::Admin; module Taghelpers

class ShippingHelper < TagHelper
    attr_accessor :logUtil, :weblisketSession, :storeFrontInterface, :propertiesHashMap, :pageContext, :request, :shippingType

    def jfields_admin_taghelpers_ShippingHelper
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @weblisketSession = nil unless instance_variable_defined?(:@weblisketSession)
        @storeFrontInterface = nil unless instance_variable_defined?(:@storeFrontInterface)
        @propertiesHashMap = nil unless instance_variable_defined?(:@propertiesHashMap)
        @pageContext = nil unless instance_variable_defined?(:@pageContext)
        @request = nil unless instance_variable_defined?(:@request)
        @shippingType = nil unless instance_variable_defined?(:@shippingType)
    end
    

    def initialize(hashMap, pageContext)
        super()
        jfields_admin_taghelpers_ShippingHelper
        @pageContext = pageContext
        @request = pageContext.getRequest()
        storeName = hashMap.get(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME)
        if storeName != nil
            @storeFrontInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontFactory.getInstance(storeName)
        end
        @weblisketSession = ::Org::Allbinary::Logic::Communication::Http::Request::Session::WeblisketSession.new(hashMap, pageContext)
        self.getFormData()
    end
    

    def getFormData()
        @shippingType = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Shipping::ShippingMethodData::NAME)
    end
    java_overload :getFormData, 0
    

    def setShippingType()
        begin
            success = "Successfully Set Shipping Type"
            order = @weblisketSession.getOrder()
            order.setShippingMethod(@shippingType)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "setShippingType()")
            end
            return success
        rescue StandardError => e
            error = "Failed to view Shipping Type"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "setShippingType()", e)
            end
            return error
        end
    end
    java_overload :setShippingType, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontFactory, "org/allbinary/business/context/modules/storefront/StoreFrontFactory" unless const_defined?(:StoreFrontFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderInterface, "org/allbinary/business/user/commerce/inventory/order/OrderInterface" unless const_defined?(:OrderInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Shipping; autoload :ShippingMethodData, "org/allbinary/business/user/commerce/shipping/ShippingMethodData" unless const_defined?(:ShippingMethodData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; module Session; autoload :WeblisketSession, "org/allbinary/logic/communication/http/request/session/WeblisketSession" unless const_defined?(:WeblisketSession, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end

