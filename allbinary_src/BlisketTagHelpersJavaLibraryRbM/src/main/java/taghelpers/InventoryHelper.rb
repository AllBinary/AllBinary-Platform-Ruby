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
# package taghelpers

require "java/lang/JavaOverload"
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/http/HttpServletResponse"
# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/TagHelper"

module ::Taghelpers

class InventoryHelper < ::Admin::Taghelpers::TagHelper
    attr_accessor :logUtil, :basicItemData, :weblisketSession, :response, :request, :streetAddress, :id, :searchRequest

    def jfields_taghelpers_InventoryHelper
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @basicItemData = ::Org::Allbinary::Business::User::Commerce::Inventory::Item::BasicItemData.getInstance()
        @weblisketSession = nil unless instance_variable_defined?(:@weblisketSession)
        @response = nil unless instance_variable_defined?(:@response)
        @request = nil unless instance_variable_defined?(:@request)
        @streetAddress = nil unless instance_variable_defined?(:@streetAddress)
        @id = nil unless instance_variable_defined?(:@id)
        @searchRequest = nil unless instance_variable_defined?(:@searchRequest)
    end
    

    def initialize(propertiesHashMap, pageContext)
        super()
        jfields_taghelpers_InventoryHelper
        @response = pageContext.getResponse()
        @request = pageContext.getRequest()
        storeName = propertiesHashMap.get(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME)
        xslFile = propertiesHashMap.get(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoData.getInstance().TEMPLATEFILENAME)
        if storeName != nil
            storeFrontInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontFactory.getInstance(storeName)
            contentType = ::Org::Allbinary::Logic::Communication::Http::AcceptableResponseGenerator.getInstance().get(@request)
            searchParams = ::Org::Allbinary::Logic::ControlPackage::Search::SearchParams.new(@request)
            @searchRequest = ::Org::Allbinary::Logic::ControlPackage::Search::SearchRequest.new(storeFrontInterface, searchParams, xslFile, contentType, propertiesHashMap, pageContext)
        end
        self.getFormData()
    end
    

    def getFormData()
        @id = @request.getParameter(@basicItemData.ID)
    end
    java_overload :getFormData, 0
    

    def viewSummary()
        begin
            inventoryViewSearchInterface = ::Views::Admin::Inventory::Listings::InventoryViewFactory.getInstance(@searchRequest)
            result = inventoryViewSearchInterface.getProduct(@id)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF("Successfull Inventory View Summary", self, "viewSummary()")
            end
            return result
        rescue StandardError => e
            error = "Failed to View Summary"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "viewSummary()", e)
            end
            return error + "<br>" + "Exception: " + (e).to_s + "<br>"
        end
    end
    java_overload :viewSummary, 0
    

    def search()
        begin
            stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
            keywords = @searchRequest.getParams().get().get(@basicItemData.KEYWORDS)
            if keywords == nil || (keywords <=> stringUtil.EMPTY_STRING) == 0
                return "Please enter a keyword in the search field above the Search button."
            end
            inventoryViewSearchInterface = ::Views::Admin::Inventory::Listings::InventoryViewFactory.getInstance(@searchRequest)
            result = inventoryViewSearchInterface.searchSingleDynamicPage()
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF("Successful Inventory Dynamic Search", self, "searchSingleDynamicPage()")
            end
            return result
        rescue StandardError => e
            error = "Failed to search Inventory by keyword"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "searchSingleDynamicPage()", e)
            end
            return error + "<br>" + "Exception: " + (e).to_s + "<br>"
        end
    end
    java_overload :search, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontFactory, "org/allbinary/business/context/modules/storefront/StoreFrontFactory" unless const_defined?(:StoreFrontFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Address; autoload :StreetAddress, "org/allbinary/business/user/address/StreetAddress" unless const_defined?(:StreetAddress, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; autoload :BasicItemData, "org/allbinary/business/user/commerce/inventory/item/BasicItemData" unless const_defined?(:BasicItemData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; autoload :AcceptableResponseGenerator, "org/allbinary/logic/communication/http/AcceptableResponseGenerator" unless const_defined?(:AcceptableResponseGenerator, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; module Session; autoload :WeblisketSession, "org/allbinary/logic/communication/http/request/session/WeblisketSession" unless const_defined?(:WeblisketSession, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Search; autoload :SearchParams, "org/allbinary/logic/control/search/SearchParams" unless const_defined?(:SearchParams, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Search; autoload :SearchRequest, "org/allbinary/logic/control/search/SearchRequest" unless const_defined?(:SearchRequest, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoData, "org/allbinary/logic/visual/transform/info/TransformInfoData" unless const_defined?(:TransformInfoData, false); end; end; end; end; end; end
module ::Views; module Admin; module Inventory; module Listings; autoload :InventoryViewFactory, "views/admin/inventory/listings/InventoryViewFactory" unless const_defined?(:InventoryViewFactory, false); end; end; end; end
module ::Views; module Admin; module Inventory; module Listings; autoload :InventoryViewSearchInterface, "views/admin/inventory/listings/InventoryViewSearchInterface" unless const_defined?(:InventoryViewSearchInterface, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end

