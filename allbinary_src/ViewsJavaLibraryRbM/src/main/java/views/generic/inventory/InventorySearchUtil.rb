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


class InventorySearchUtil
    attr_accessor :logUtil, :commonStrings, :commonPhoneStrings, :basicItemData

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @commonPhoneStrings = CommonPhoneStrings.getInstance()
        @basicItemData = BasicItemData.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return InventorySearchUtil.instance
    end
    

    # throws Exception
    def getBasicItemIdColumn(searchRequest)
        inventoryEntityInterface = InventoryEntityFactory.getInstance().getInventoryEntityInstance()
        storeFrontInterface = searchRequest.getStoreFront()
        inventorySearchUtil = InventoryColumnUtil.getInstance()
        column = inventorySearchUtil.getColumnWhereLike(inventoryEntityInterface, storeFrontInterface.getCategoryPath(), @basicItemData.ID)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGING)
            @logUtil.putF("Number Of Items Found: " + (column.size()).to_s, self, "search")
        end
        subStoreVector = storeFrontInterface.getSubStores()
        size = subStoreVector.size()
        (0...size).each do |index|
            subStore = subStoreVector.get(index)
            substoreIdColumn = inventorySearchUtil.getColumnWhereLike(inventoryEntityInterface, subStore, @basicItemData.ID)
            column.addAllList(substoreIdColumn)
        end
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGING)
            @logUtil.putF("Number Of Items Found Including SubStores: " + (column.size()).to_s, self, "search")
        end
        return column
    end
    

    # throws Exception
    def getNoResults(viewDocumentInterface, inventoryNode)
        inventoryNode.appendChild(ModDomHelper.createNameValueNodes(viewDocumentInterface.getDoc(), SearchData::TOTAL_NUMBER_PAGES, @commonPhoneStrings.ZERO))
        inventoryNode.appendChild(ModDomHelper.createNameValueNodes(viewDocumentInterface.getDoc(), SearchData::TOTAL_NUMBER_ITEMS, @commonPhoneStrings.ZERO))
        success = XmlDocumentHelper.toString(viewDocumentInterface.getDoc())
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGING)
            @logUtil.putF("No Results Xml: " + success, self, "search")
        end
        return success
    end
    

    def search(abeClientInformation, searchRequest, column)
        begin
            inventoryEntityInterface = InventoryEntityFactory.getInstance().getInventoryEntityInstance()
            searchParams = searchRequest.getParams()
            startPage = searchParams.getStartPageInt().to_i
            endPage = searchParams.getEndPageInt().to_i
            pageLength = searchParams.getLengthInt().to_i
            savedPagesInRange = 0
            columnValueHashMap = searchParams.get()
            keyword = Replace.new("-", CommonSeps.getInstance().SPACE).all(columnValueHashMap.get(@basicItemData.KEYWORDS))
            if StringValidationUtil.getInstance().isEmpty(keyword)
                return nil
            end
            stringBuffer = StringMaker.new()
            if startPage >= 0
                if pageLength == 0
                    pageLength = SearchData::DEFAULT_PAGE_LENGTH
                end
                _MAXPAGES = 100
                productListingPages = Array.new(_MAXPAGES, nil)
                documents = Array.new(_MAXPAGES, nil)
                inventoryNodes = Array.new(_MAXPAGES, nil)
                keyword = keyword.upcase
                lastPage = -1
                numberOfResultsOnCurrentPage = 0
                numberOfResults = 0
                viewDocumentInterface = TransformStoreDocumentFactory.getInstance(searchRequest)
                inventoryNode = viewDocumentInterface.getDoc().createElement(InventoryData::INVENTORY)
                viewDocumentInterface.getBaseNode().appendChild(inventoryNode)
                inventoryNode.appendChild(ModDomHelper.createNameValueNodes(viewDocumentInterface.getDoc(), SearchData::PAGE, startPage.to_s))
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
                            itemNode = BasicItemView.new(itemInterface, BasicArrayListD.new()).toXmlNode(viewDocumentInterface.getDoc())
                            itemNode.appendChild(ModDomHelper.createNameValueNodes(viewDocumentInterface.getDoc(), BasketData::ITEMTOTALINBASKET, @commonPhoneStrings.ONE))
                            inventoryNode.appendChild(itemNode.cloneNode(true))
                        end
                        currentPage = ((numberOfResults + 1) / pageLength) - 1
                        numberOfResultsOnCurrentPage += 1
                        if lastPage < currentPage
                            if currentPage >= startPage && currentPage <= endPage
                                inventoryNode.appendChild(ModDomHelper.createNameValueNodes(viewDocumentInterface.getDoc(), SearchData::TOTAL_NUMBER_ITEMS_ON_THIS_PAGE, numberOfResultsOnCurrentPage.to_s))
                                documents[currentPage] = viewDocumentInterface.getDoc()
                                inventoryNodes[currentPage] = inventoryNode
                                savedPagesInRange += 1
                                viewDocumentInterface = TransformStoreDocumentFactory.getInstance(searchRequest)
                                inventoryNode = viewDocumentInterface.getDoc().createElement(InventoryData::INVENTORY)
                                viewDocumentInterface.getBaseNode().appendChild(inventoryNode)
                                inventoryNode.appendChild(ModDomHelper.createNameValueNodes(viewDocumentInterface.getDoc(), SearchData::PAGE, currentPage + 1.to_s))
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
                    inventoryNode.appendChild(ModDomHelper.createNameValueNodes(viewDocumentInterface.getDoc(), SearchData::TOTAL_NUMBER_ITEMS_ON_THIS_PAGE, numberOfResultsOnCurrentPage - 1.to_s))
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
                        inventoryNodes[index].appendChild(ModDomHelper.createNameValueNodes(tempDocument, SearchData::TOTAL_NUMBER_PAGES, lastPage + 1.to_s))
                        inventoryNodes[index].appendChild(ModDomHelper.createNameValueNodes(tempDocument, SearchData::TOTAL_NUMBER_ITEMS, numberOfResults.to_s))
                        (0..lastPage).each do |pageIndex|
                            stringBuffer.delete(0, stringBuffer.length())
                            stringBuffer.append(searchRequest.getFileBaseName())
                            if stringBuffer.length() > 0
                                if pageIndex != 0
                                    stringBuffer.append((pageIndex).to_s)
                                end
                                inventoryNodes[index].appendChild(ModDomHelper.createNameValueNodes(tempDocument, SearchData::PAGE_INFO, (pageIndex).to_s, stringBuffer.to_s))
                            else
                                inventoryNodes[index].appendChild(ModDomHelper.createNameValueNodes(tempDocument, SearchData::PAGE_INFO, (pageIndex).to_s, SearchData::SEARCH))
                            end
                        end
                        success = XmlDocumentHelper.toString(tempDocument)
                        productListingPages[index] = StoreTransformer.new(abeClientInformation, TransformInfoHttpSearch.new(searchRequest)).translate(success)
                    end
                end
                if savedPagesInRange == 0
                    result = self.getNoResults(viewDocumentInterface, inventoryNode)
                    productListingPages[0] = StoreTransformer.new(abeClientInformation, TransformInfoHttpSearch.new(searchRequest)).translate(result)
                end
                return productListingPages
            else
                return nil
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGINGERROR)
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

autoload :HashMap, "java/util/HashMap"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
autoload :InventoryData, "org/allbinary/business/user/commerce/inventory/InventoryData"
autoload :BasketData, "org/allbinary/business/user/commerce/inventory/basket/BasketData"
autoload :BasicItemData, "org/allbinary/business/user/commerce/inventory/item/BasicItemData"
autoload :BasicItemView, "org/allbinary/business/user/commerce/inventory/item/BasicItemView"
autoload :ItemInterface, "org/allbinary/business/user/commerce/inventory/item/ItemInterface"
autoload :InventoryEntity, "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntity"
autoload :InventoryEntityFactory, "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityFactory"
autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper"
autoload :XmlDocumentHelper, "org/allbinary/data/tree/dom/document/XmlDocumentHelper"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :SearchData, "org/allbinary/logic/control/search/SearchData"
autoload :SearchParams, "org/allbinary/logic/control/search/SearchParams"
autoload :SearchRequest, "org/allbinary/logic/control/search/SearchRequest"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil"
autoload :Replace, "org/allbinary/logic/string/regex/replace/Replace"
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
autoload :StoreTransformer, "org/allbinary/logic/visual/transform/StoreTransformer"
autoload :TransformDocumentInterface, "org/allbinary/logic/visual/transform/data/TransformDocumentInterface"
autoload :TransformStoreDocumentFactory, "org/allbinary/logic/visual/transform/data/TransformStoreDocumentFactory"
autoload :TransformInfoHttpSearch, "org/allbinary/logic/visual/transform/info/TransformInfoHttpSearch"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :CommonPhoneStrings, "org/allbinary/string/CommonPhoneStrings"
autoload :CommonSeps, "org/allbinary/string/CommonSeps"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"
autoload :InventoryColumnUtil, "views/generic/inventory/InventoryColumnUtil"

begin
    InventorySearchUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

