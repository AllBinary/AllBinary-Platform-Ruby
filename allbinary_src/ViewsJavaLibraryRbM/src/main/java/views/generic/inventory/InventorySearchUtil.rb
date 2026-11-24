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


module ::Views; module Generic; module Inventory

class InventorySearchUtil
    attr_accessor :logUtil, :commonStrings, :commonPhoneStrings, :basicItemData

    def jfields_views_generic_inventory_InventorySearchUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @commonPhoneStrings = ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance()
        @basicItemData = ::Org::Allbinary::Business::User::Commerce::Inventory::Item::BasicItemData.getInstance()
    end

    def initialize
        jfields_views_generic_inventory_InventorySearchUtil
    end
    

    def self.getInstance()
        return InventorySearchUtil.instance
    end
    

    # throws Exception
    def getBasicItemIdColumn(searchRequest)
        inventoryEntityInterface = ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Item::InventoryEntityFactory.getInstance().getInventoryEntityInstance()
        storeFrontInterface = searchRequest.getStoreFront()
        inventorySearchUtil = InventoryColumnUtil.getInstance()
        column = inventorySearchUtil.getColumnWhereLike(inventoryEntityInterface, storeFrontInterface.getCategoryPath(), @basicItemData.ID)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGING)
            @logUtil.putF("Number Of Items Found: " + (column.size()).to_s, self, "search")
        end
        subStoreVector = storeFrontInterface.getSubStores()
        size = subStoreVector.size()
        (0...size).each do |index|
            subStore = subStoreVector.get(index)
            substoreIdColumn = inventorySearchUtil.getColumnWhereLike(inventoryEntityInterface, subStore, @basicItemData.ID)
            column.addAllList(substoreIdColumn)
        end
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGING)
            @logUtil.putF("Number Of Items Found Including SubStores: " + (column.size()).to_s, self, "search")
        end
        return column
    end
    

    # throws Exception
    def getNoResults(viewDocumentInterface, inventoryNode)
        inventoryNode.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(viewDocumentInterface.getDoc(), ::Org::Allbinary::Logic::ControlPackage::Search::SearchData::TOTAL_NUMBER_PAGES, @commonPhoneStrings.ZERO))
        inventoryNode.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(viewDocumentInterface.getDoc(), ::Org::Allbinary::Logic::ControlPackage::Search::SearchData::TOTAL_NUMBER_ITEMS, @commonPhoneStrings.ZERO))
        success = ::Org::Allbinary::DataPackage::Tree::Dom::Document::XmlDocumentHelper.toString(viewDocumentInterface.getDoc())
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGING)
            @logUtil.putF("No Results Xml: " + success, self, "search")
        end
        return success
    end
    

    def search(abeClientInformation, searchRequest, column)
        begin
            inventoryEntityInterface = ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Item::InventoryEntityFactory.getInstance().getInventoryEntityInstance()
            searchParams = searchRequest.getParams()
            startPage = searchParams.getStartPageInt().to_i
            endPage = searchParams.getEndPageInt().to_i
            pageLength = searchParams.getLengthInt().to_i
            savedPagesInRange = 0
            columnValueHashMap = searchParams.get()
            keyword = ::Org::Allbinary::Logic::StringPackage::Regex::Replace::Replace.new("-", ::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE).all(columnValueHashMap.get(@basicItemData.KEYWORDS))
            if ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(keyword)
                return nil
            end
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            if startPage >= 0
                if pageLength == 0
                    pageLength = ::Org::Allbinary::Logic::ControlPackage::Search::SearchData::DEFAULT_PAGE_LENGTH
                end
                _MAXPAGES = 100
                productListingPages = Array.new(_MAXPAGES, nil)
                documents = Array.new(_MAXPAGES, nil)
                inventoryNodes = Array.new(_MAXPAGES, nil)
                keyword = keyword.upcase
                lastPage = -1
                numberOfResultsOnCurrentPage = 0
                numberOfResults = 0
                viewDocumentInterface = ::Org::Allbinary::Logic::Visual::Transform::DataPackage::TransformStoreDocumentFactory.getInstance(searchRequest)
                inventoryNode = viewDocumentInterface.getDoc().createElement(::Org::Allbinary::Business::User::Commerce::Inventory::InventoryData::INVENTORY)
                viewDocumentInterface.getBaseNode().appendChild(inventoryNode)
                inventoryNode.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(viewDocumentInterface.getDoc(), ::Org::Allbinary::Logic::ControlPackage::Search::SearchData::PAGE, startPage.to_s))
                if searchRequest.getFileBaseName() != nil
                    inventoryNode.appendChild(searchRequest.getFileBaseNameNode(viewDocumentInterface.getDoc()))
                end
                currentPage = -1
                size = column.size()
                (0...size).each do |index|
                    product = String.new(column.get(index))
                    itemInterface = inventoryEntityInterface.getItem(product)
                    keywords = itemInterface.getKeywords()
                    keywords = keywords.upcase
                    if (keywords.index(keyword) || -1) != -1
                        if currentPage + 1 >= startPage && currentPage + 1 <= endPage
                            itemNode = ::Org::Allbinary::Business::User::Commerce::Inventory::Item::BasicItemView.new(itemInterface, ::Org::Allbinary::Util::BasicArrayListD.new()).toXmlNode(viewDocumentInterface.getDoc())
                            itemNode.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(viewDocumentInterface.getDoc(), ::Org::Allbinary::Business::User::Commerce::Inventory::Basket::BasketData::ITEMTOTALINBASKET, @commonPhoneStrings.ONE))
                            inventoryNode.appendChild(itemNode.cloneNode(true))
                        end
                        currentPage = ((numberOfResults + 1) / pageLength) - 1
                        numberOfResultsOnCurrentPage += 1
                        if lastPage < currentPage
                            if currentPage >= startPage && currentPage <= endPage
                                inventoryNode.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(viewDocumentInterface.getDoc(), ::Org::Allbinary::Logic::ControlPackage::Search::SearchData::TOTAL_NUMBER_ITEMS_ON_THIS_PAGE, numberOfResultsOnCurrentPage.to_s))
                                documents[currentPage] = viewDocumentInterface.getDoc()
                                inventoryNodes[currentPage] = inventoryNode
                                savedPagesInRange += 1
                                viewDocumentInterface = ::Org::Allbinary::Logic::Visual::Transform::DataPackage::TransformStoreDocumentFactory.getInstance(searchRequest)
                                inventoryNode = viewDocumentInterface.getDoc().createElement(::Org::Allbinary::Business::User::Commerce::Inventory::InventoryData::INVENTORY)
                                viewDocumentInterface.getBaseNode().appendChild(inventoryNode)
                                inventoryNode.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(viewDocumentInterface.getDoc(), ::Org::Allbinary::Logic::ControlPackage::Search::SearchData::PAGE, currentPage + 1.to_s))
                                if searchRequest.getFileBaseName() != nil
                                    inventoryNode.appendChild(searchRequest.getFileBaseNameNode(viewDocumentInterface.getDoc()))
                                end
                            end
                            lastPage = currentPage
                            numberOfResultsOnCurrentPage = 0
                        end
                        numberOfResults += 1
                        if lastPage >= _MAXPAGES - 1
                            break
                        end
                    end
                end
                if numberOfResultsOnCurrentPage > 0 && (currentPage + 1 >= startPage && currentPage + 1 <= endPage)
                    inventoryNode.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(viewDocumentInterface.getDoc(), ::Org::Allbinary::Logic::ControlPackage::Search::SearchData::TOTAL_NUMBER_ITEMS_ON_THIS_PAGE, numberOfResultsOnCurrentPage - 1.to_s))
                    documents[lastPage + 1] = viewDocumentInterface.getDoc()
                    inventoryNodes[lastPage + 1] = inventoryNode
                    savedPagesInRange += 1
                end
                if numberOfResultsOnCurrentPage > 0
                    lastPage += 1
                end
                if endPage > _MAXPAGES - 1
                    endPage = _MAXPAGES - 1
                end
                (startPage..endPage).each do |index|
                    if index <= lastPage
                        tempDocument = documents[index]
                        inventoryNodes[index].appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(tempDocument, ::Org::Allbinary::Logic::ControlPackage::Search::SearchData::TOTAL_NUMBER_PAGES, lastPage + 1.to_s))
                        inventoryNodes[index].appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(tempDocument, ::Org::Allbinary::Logic::ControlPackage::Search::SearchData::TOTAL_NUMBER_ITEMS, numberOfResults.to_s))
                        (0..lastPage).each do |pageIndex|
                            stringBuffer.delete(0, stringBuffer.length())
                            stringBuffer.append(searchRequest.getFileBaseName())
                            if stringBuffer.length() > 0
                                if pageIndex != 0
                                    stringBuffer.append((pageIndex).to_s)
                                end
                                inventoryNodes[index].appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(tempDocument, ::Org::Allbinary::Logic::ControlPackage::Search::SearchData::PAGE_INFO, (pageIndex).to_s, stringBuffer.to_s))
                            else
                                inventoryNodes[index].appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(tempDocument, ::Org::Allbinary::Logic::ControlPackage::Search::SearchData::PAGE_INFO, (pageIndex).to_s, ::Org::Allbinary::Logic::ControlPackage::Search::SearchData::SEARCH))
                            end
                        end
                        success = ::Org::Allbinary::DataPackage::Tree::Dom::Document::XmlDocumentHelper.toString(tempDocument)
                        productListingPages[index] = ::Org::Allbinary::Logic::Visual::Transform::StoreTransformer.new(abeClientInformation, ::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoHttpSearch.new(searchRequest)).translate(success)
                    end
                end
                if savedPagesInRange == 0
                    result = self.getNoResults(viewDocumentInterface, inventoryNode)
                    productListingPages[0] = ::Org::Allbinary::Logic::Visual::Transform::StoreTransformer.new(abeClientInformation, ::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoHttpSearch.new(searchRequest)).translate(result)
                end
                return productListingPages
            else
                return nil
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGINGERROR)
                @logUtil.put(@commonStrings.FAILURE, self, "search", e)
            end
            return nil
        end
    end

    def self.instance()
        InventorySearchUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        InventorySearchUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = InventorySearchUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "InventorySearchUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; autoload :InventoryData, "org/allbinary/business/user/commerce/inventory/InventoryData" unless const_defined?(:InventoryData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Basket; autoload :BasketData, "org/allbinary/business/user/commerce/inventory/basket/BasketData" unless const_defined?(:BasketData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; autoload :BasicItemData, "org/allbinary/business/user/commerce/inventory/item/BasicItemData" unless const_defined?(:BasicItemData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; autoload :BasicItemView, "org/allbinary/business/user/commerce/inventory/item/BasicItemView" unless const_defined?(:BasicItemView, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; autoload :ItemInterface, "org/allbinary/business/user/commerce/inventory/item/ItemInterface" unless const_defined?(:ItemInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Item; autoload :InventoryEntity, "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntity" unless const_defined?(:InventoryEntity, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Item; autoload :InventoryEntityFactory, "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityFactory" unless const_defined?(:InventoryEntityFactory, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :XmlDocumentHelper, "org/allbinary/data/tree/dom/document/XmlDocumentHelper" unless const_defined?(:XmlDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Search; autoload :SearchData, "org/allbinary/logic/control/search/SearchData" unless const_defined?(:SearchData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Search; autoload :SearchParams, "org/allbinary/logic/control/search/SearchParams" unless const_defined?(:SearchParams, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Search; autoload :SearchRequest, "org/allbinary/logic/control/search/SearchRequest" unless const_defined?(:SearchRequest, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; module Regex; module Replace; autoload :Replace, "org/allbinary/logic/string/regex/replace/Replace" unless const_defined?(:Replace, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; autoload :StoreTransformer, "org/allbinary/logic/visual/transform/StoreTransformer" unless const_defined?(:StoreTransformer, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module DataPackage; autoload :TransformDocumentInterface, "org/allbinary/logic/visual/transform/data/TransformDocumentInterface" unless const_defined?(:TransformDocumentInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module DataPackage; autoload :TransformStoreDocumentFactory, "org/allbinary/logic/visual/transform/data/TransformStoreDocumentFactory" unless const_defined?(:TransformStoreDocumentFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoHttpSearch, "org/allbinary/logic/visual/transform/info/TransformInfoHttpSearch" unless const_defined?(:TransformInfoHttpSearch, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonPhoneStrings, "org/allbinary/string/CommonPhoneStrings" unless const_defined?(:CommonPhoneStrings, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :InventoryColumnUtil, "views/generic/inventory/InventoryColumnUtil" unless const_defined?(:InventoryColumnUtil, false)

begin
    InventorySearchUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

