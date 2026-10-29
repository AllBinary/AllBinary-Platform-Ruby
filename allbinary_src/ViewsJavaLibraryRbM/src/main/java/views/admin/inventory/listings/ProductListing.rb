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
# package views.admin.inventory.listings

# require "java/util/HashSet"
# require "java/util/Set"
require "views/admin/inventory/listings/ProductListingInterface"

class ProductListing
    include ProductListingInterface
    attr_accessor :logUtil, :directory, :basicItemData, :storeFronts, :staticPages, :inventory, :searchRequest, :INVENTORY

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @directory = Directory.getInstance()
        @basicItemData = BasicItemData.getInstance()
        @storeFronts = nil
        @staticPages = nil
        @inventory = nil
        @searchRequest = nil
        @INVENTORY = ".InventoryView"
    end
    

    def initialize(searchRequest)
        initialize_fields
        @searchRequest = searchRequest
        @storeFronts = StoreFrontsEntity.new()
        @staticPages = StaticPagesEntity.new()
        @inventory = InventoryEntity.new()
    end
    

    # throws Exception
    def getHashSet(storeFront)
        inventoryColumnUtil = InventoryColumnUtil.getInstance()
        keywords = inventoryColumnUtil.getColumnWhereLike(@inventory, storeFront.getCategoryPath(), @basicItemData.KEYWORDS)
        subStoreVector = storeFront.getSubStores()
        size = subStoreVector.size()
        (0...size).each do |index|
            subStore = subStoreVector.get(index)
            substoreKeywords = inventoryColumnUtil.getColumnWhereLike(@inventory, (AbPathData.getInstance().SEPARATOR).to_s + subStore, @basicItemData.CATEGORY)
            keywords.addAllList(substoreKeywords)
        end
        uniqueTokens = UniqueTokens.new()
        keywordHashSet = uniqueTokens.getWhithoutDashesAndSkipNumberOnlyTokens(keywords)
        return keywordHashSet
    end
    

    # throws Exception
    def savePage(file, data)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().STATICPAGEGENERATIONLOGGING)
            @logUtil.putF("Creating File: " + file, self, "generateAll()")
        end
        newFile = AbFile.createAbFile(file)
        if newFile.exists()
            newFile.delete()
        end
        newFile.createNewFile()
        if newFile.exists()
            idOutData = DataOutputStreamFactory.getInstance().getInstanceForAbFile(newFile)
            idOutData.writeBytes(data)
            idOutData.flush()
            StreamUtil.getInstance().close(idOutData)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().STATICPAGEGENERATIONLOGGING)
                @logUtil.putF("Wrote Total Bytes: " + (newFile.length()).to_s, self, "generateAll()")
            end
        else
            raise StandardError.new("Could Not Create: " + file)
        end
    end
    

    # throws Exception
    def create(keywordData, keywordFilenameHashMap, vector, staticPath)
        stringBuffer = StringMaker.new()
        hashMap = SpecialCharacterUtil.getHashMap()
        hashMap.put(CommonSeps.getInstance().SPACE, StringUtil.getInstance().EMPTY_STRING)
        pageName = Replace.new(hashMap).all(keywordData)
        searchParams = @searchRequest.getParams()
        searchParams.add(@basicItemData.KEYWORDS, keywordData)
        searchParams.setStartPage(CommonPhoneStrings.getInstance().ZERO)
        @searchRequest.setParams(searchParams)
        @searchRequest.setFileBaseName(pageName)
        abeClientInformation = ServiceClientInformationInterfaceFactory.getInstance()
        inventorySearchUtil = InventorySearchUtil.getInstance()
        productListingPages = inventorySearchUtil.search(abeClientInformation, @searchRequest, vector)
        (0...productListingPages.length).each do |index|
            if productListingPages[index] == nil
                break
            end
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().STATICPAGEGENERATIONLOGGING)
                @logUtil.putF("Saving Listing: " + (index).to_s, self, "generateAll()")
            end
            indexStr = StringUtil.getInstance().EMPTY_STRING
            if index > 0
                indexStr = index.to_s
            end
            keywordFilenameHashMap.put(keywordData, pageName + indexStr)
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append(staticPath.to_s)
            stringBuffer.append(pageName)
            stringBuffer.append(indexStr)
            stringBuffer.append(AbPathData.getInstance().EXTENSION_SEP)
            stringBuffer.append(InputOutputTypeData.getInstance().DEFAULT)
            file = stringBuffer.to_s
            if !@directory.create(staticPath)
                raise StandardError.new("Could Not Create Directory: " + (staticPath).to_s)
            end
            self.savePage(file, productListingPages[index])
        end
    end
    

    def addStaticPageInfoToDatabase(storeFront, keywordFilenameHashMap)
        keywordHashSet = keywordFilenameHashMap.keySet()
        keywordArray = keywordHashSet.toArray()
        size = keywordArray.length
        (0...size).each do |index|
            insertVector = BasicArrayListD.new()
            keywordData = keywordArray[index]
            fileName = keywordFilenameHashMap.get(keywordData)
            insertVector.add(storeFront.getName())
            insertVector.add(keywordData)
            insertVector.add(fileName)
            @staticPages.insert(insertVector)
        end
    end
    

    # throws Exception
    def generateAll()
        begin
            storeFront = @searchRequest.getStoreFront()
            stringBuffer = StringMaker.new()
            stringBuffer.append(URLGLOBALS.getWebappPath())
            stringBuffer.append(storeFront.getName())
            stringBuffer.append(AbPathData.getInstance().SEPARATOR)
            stringBuffer.append(storeFront.getStaticPath())
            staticPath = AbPath.new(stringBuffer.to_s, StringUtil.getInstance().EMPTY_STRING)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().STATICPAGEGENERATIONLOGGING)
                @logUtil.putF("Store Static Pages Path: " + (staticPath).to_s, self, "generateAll()")
            end
            keywordHashSet = self.getHashSet(storeFront)
            keywordArray = keywordHashSet.toArray()
            size = keywordArray.length
            keywordFilenameHashMap = StdUtil.getInstance().createHashMap()
            if size == 0
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append("Products For ")
                stringBuffer.append(storeFront.getName())
                stringBuffer.append(" Store Not Found")
                return stringBuffer.to_s
            end
            inventorySearchUtil = InventorySearchUtil.getInstance()
            vector = inventorySearchUtil.getBasicItemIdColumn(@searchRequest)
            (0...size).each do |index|
                keywordData = keywordArray[index]
                if keywordData.length > 1
                    self.create(keywordData, keywordFilenameHashMap, vector, staticPath)
                end
            end
            self.addStaticPageInfoToDatabase(storeFront, keywordFilenameHashMap)
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append("Static Files Generated Successfully For ")
            stringBuffer.append(storeFront.getName())
            stringBuffer.append(" it used packages ")
            stringBuffer.append(storeFront.getPackageLocation())
            stringBuffer.append(@INVENTORY)
            return stringBuffer.to_s
        rescue StandardError => e
            raise e
        end
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def generateAll(storeName)
        begin
            stringBuffer = StringMaker.new()
            if storeName != nil
                if (storeName <=> GLOBALS2.GENERATEALLSTORES) != 0
                    @searchRequest.setStoreFront(@storeFronts.getStoreFrontInterface(storeName))
                    stringBuffer.append(self.generateAll())
                    stringBuffer.append("<br />")
                else
                    storeFrontVector = @storeFronts.getStoreFrontNames()
                    size = storeFrontVector.size()
                    (0...size).each do |index|
                        storeName = storeFrontVector.get(index)
                        @searchRequest.setStoreFront(@storeFronts.getStoreFrontInterface(storeName))
                        stringBuffer.append(self.generateAll())
                        stringBuffer.append("<br />")
                    end
                end
            else
                return "Generation Failed No Store Specified<br/>"
            end
            stringBuffer.append("All Static Pages Generated<br/>")
            return stringBuffer.to_s
        rescue StandardError => e
            raise e
        end
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/business/user/commerce/inventory/item/BasicItemData"
require "org/allbinary/data/tables/context/module/storefronts/StoreFrontsEntity"
require "org/allbinary/data/tables/staticpages/StaticPagesEntity"
require "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntity"
require "org/allbinary/globals/GLOBALS2"
require "org/allbinary/globals/URLGLOBALS"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/control/search/SearchParams"
require "org/allbinary/logic/control/search/SearchRequest"
require "org/allbinary/logic/io/AbDataOutputStream"
require "org/allbinary/logic/io/DataOutputStreamFactory"
require "org/allbinary/logic/io/InputOutputTypeData"
require "org/allbinary/logic/io/StreamUtil"
require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/file/directory/Directory"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/io/path/AbPathData"
require "org/allbinary/logic/string/SpecialCharacterUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/string/regex/replace/Replace"
require "org/allbinary/logic/string/tokens/UniqueTokens"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory"
require "org/allbinary/string/CommonPhoneStrings"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/util/BasicArrayList"
require "views/generic/inventory/InventoryColumnUtil"
require "views/generic/inventory/InventorySearchUtil"

