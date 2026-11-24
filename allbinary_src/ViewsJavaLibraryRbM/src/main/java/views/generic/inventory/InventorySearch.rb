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
# package views.generic.inventory

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "views/admin/inventory/listings/InventoryViewSearchInterface"

module ::Views; module Generic; module Inventory

class InventorySearch
    include ::Views::Admin::Inventory::Listings::InventoryViewSearchInterface
    attr_accessor :logUtil, :commonStrings, :basicItemData, :searchRequest

    def jfields_views_generic_inventory_InventorySearch
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @basicItemData = ::Org::Allbinary::Business::User::Commerce::Inventory::Item::BasicItemData.getInstance()
        @searchRequest = nil unless instance_variable_defined?(:@searchRequest)
    end
    

    def initialize(searchRequest)
        super()
        jfields_views_generic_inventory_InventorySearch
        @searchRequest = searchRequest
    end
    

    # throws Exception
    def searchSingleStaticPage()
        begin
            storeFront = @searchRequest.getStoreFront()
            searchParams = @searchRequest.getParams()
            columnValueHashMap = searchParams.get()
            file = ::Org::Allbinary::DataPackage::Tables::Staticpages::StaticPagesEntity.new().getFile(storeFront.getName(), ::Org::Allbinary::Logic::StringPackage::Regex::Replace::Replace.new("-", ::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE).all(columnValueHashMap.get(@basicItemData.KEYWORDS)))
            if ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(file)
                return nil
            else
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                stringBuffer.append(storeFront.getCurrentHostName())
                stringBuffer.append(storeFront.getCurrentHostNamePath())
                stringBuffer.append(storeFront.getStaticPath())
                stringBuffer.append(file)
                stringBuffer.append(@searchRequest.getParams().getEndPage())
                stringBuffer.append(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().EXTENSION_SEP)
                stringBuffer.append(::Org::Allbinary::Logic::Io::InputOutputTypeData.getInstance().DEFAULT)
                filePath = ::Org::Allbinary::Logic::StringPackage::Regex::Replace::Replace.new(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE, "%20").all(stringBuffer.to_s)
                return filePath
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "searchSingleStaticPage", e)
            end
            raise StandardError.new("Failed retrieve Single Product Page Static")
        end
    end
    java_overload :searchSingleStaticPage, 0
    

    # throws Exception
    def searchSingleDynamicPage()
        begin
            str = self.search()
            return str[@searchRequest.getParams().getStartPageInt().to_i]
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGINGERROR)
                @logUtil.put(@commonStrings.FAILURE, self, "searchSingleDynamicPage", e)
            end
            raise StandardError.new("Failed retrieve Single Product Page Dynamically")
        end
    end
    java_overload :searchSingleDynamicPage, 0
    

    # throws Exception
    def search()
        abeClientInformation = ::Org::Allbinary::Logic::System::Security::Licensing::ServiceClientInformationInterfaceFactory.getInstance()
        inventorySearchUtil = InventorySearchUtil.getInstance()
        vector = inventorySearchUtil.getBasicItemIdColumn(@searchRequest)
        return inventorySearchUtil.search(abeClientInformation, @searchRequest, vector)
    end
    java_overload :search, 0
    

    # throws Exception
    def getProduct(product)
        abeClientInformation = ::Org::Allbinary::Logic::System::Security::Licensing::ServiceClientInformationInterfaceFactory.getInstance()
        return InventorySearchProductUtil.getInstance().getProduct(abeClientInformation, @searchRequest, product)
    end
    java_overload :getProduct, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; autoload :BasicItemData, "org/allbinary/business/user/commerce/inventory/item/BasicItemData" unless const_defined?(:BasicItemData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module Staticpages; autoload :StaticPagesEntity, "org/allbinary/data/tables/staticpages/StaticPagesEntity" unless const_defined?(:StaticPagesEntity, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Search; autoload :SearchParams, "org/allbinary/logic/control/search/SearchParams" unless const_defined?(:SearchParams, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Search; autoload :SearchRequest, "org/allbinary/logic/control/search/SearchRequest" unless const_defined?(:SearchRequest, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :InputOutputTypeData, "org/allbinary/logic/io/InputOutputTypeData" unless const_defined?(:InputOutputTypeData, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; module Regex; module Replace; autoload :Replace, "org/allbinary/logic/string/regex/replace/Replace" unless const_defined?(:Replace, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :ServiceClientInformationInterfaceFactory, "org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory" unless const_defined?(:ServiceClientInformationInterfaceFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :InventorySearchProductUtil, "views/generic/inventory/InventorySearchProductUtil" unless const_defined?(:InventorySearchProductUtil, false)
autoload :InventorySearchUtil, "views/generic/inventory/InventorySearchUtil" unless const_defined?(:InventorySearchUtil, false)

end; end; end

