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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
# require "java/util/Set"
require "views/admin/inventory/listings/ProductListingInterface"

module ::Views; module Admin; module Inventory; module Listings

class ProductListing
    include ProductListingInterface
    attr_accessor :logUtil, :directory, :basicItemData, :storeFronts, :staticPages, :inventory, :searchRequest, :INVENTORY

    def jfields_views_admin_inventory_listings_ProductListing
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @directory = ::Org::Allbinary::Logic::Io::FilePackage::Directory::Directory.getInstance()
        @basicItemData = ::Org::Allbinary::Business::User::Commerce::Inventory::Item::BasicItemData.getInstance()
        @storeFronts = nil unless instance_variable_defined?(:@storeFronts)
        @staticPages = nil unless instance_variable_defined?(:@staticPages)
        @inventory = nil unless instance_variable_defined?(:@inventory)
        @searchRequest = nil unless instance_variable_defined?(:@searchRequest)
        @INVENTORY = ".InventoryView"
    end
    

    def initialize(searchRequest)
        jfields_views_admin_inventory_listings_ProductListing
        @searchRequest = searchRequest
        @storeFronts = ::Org::Allbinary::DataPackage::Tables::Context::ModulePackage::Storefronts::StoreFrontsEntity.new()
        @staticPages = ::Org::Allbinary::DataPackage::Tables::Staticpages::StaticPagesEntity.new()
        @inventory = ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Item::InventoryEntity.new()
    end
    

    # throws Exception
    def getHashSet(storeFront)
        inventoryColumnUtil = ::Views::Generic::Inventory::InventoryColumnUtil.getInstance()
        keywords = inventoryColumnUtil.getColumnWhereLike(@inventory, storeFront.getCategoryPath(), @basicItemData.KEYWORDS)
        subStoreVector = storeFront.getSubStores()
        size = subStoreVector.size()
        (0...size).each do |index|
            subStore = subStoreVector.get(index)
            substoreKeywords = inventoryColumnUtil.getColumnWhereLike(@inventory, (::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR).to_s + subStore, @basicItemData.CATEGORY)
            keywords.addAllList(substoreKeywords)
        end
        uniqueTokens = ::Org::Allbinary::Logic::StringPackage::Tokens::UniqueTokens.new()
        keywordHashSet = uniqueTokens.getWhithoutDashesAndSkipNumberOnlyTokens(keywords)
        return keywordHashSet
    end
    java_overload :getHashSet, 1
    

    # throws Exception
    def savePage(file, data)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().STATICPAGEGENERATIONLOGGING)
            @logUtil.putF("Creating File: " + file, self, "generateAll()")
        end
        newFile = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFile(file)
        if newFile.exists()
            newFile.delete()
        end
        newFile.createNewFile()
        if newFile.exists()
            idOutData = ::Org::Allbinary::Logic::Io::DataOutputStreamFactory.getInstance().getInstanceForAbFile(newFile)
            idOutData.writeBytes(data)
            idOutData.flush()
            ::Org::Allbinary::Logic::Io::StreamUtil.getInstance().close(idOutData)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().STATICPAGEGENERATIONLOGGING)
                @logUtil.putF("Wrote Total Bytes: " + (newFile.length()).to_s, self, "generateAll()")
            end
        else
            raise StandardError.new("Could Not Create: " + file)
        end
    end
    java_overload :savePage, 2
    

    # throws Exception
    def create(keywordData, keywordFilenameHashMap, vector, staticPath)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        hashMap = ::Org::Allbinary::Logic::StringPackage::SpecialCharacterUtil.getHashMap()
        hashMap.put(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
        pageName = ::Org::Allbinary::Logic::StringPackage::Regex::Replace::Replace.new(hashMap).all(keywordData)
        searchParams = @searchRequest.getParams()
        searchParams.add(@basicItemData.KEYWORDS, keywordData)
        searchParams.setStartPage(::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().ZERO)
        @searchRequest.setParams(searchParams)
        @searchRequest.setFileBaseName(pageName)
        abeClientInformation = ::Org::Allbinary::Logic::System::Security::Licensing::ServiceClientInformationInterfaceFactory.getInstance()
        inventorySearchUtil = ::Views::Generic::Inventory::InventorySearchUtil.getInstance()
        productListingPages = inventorySearchUtil.search(abeClientInformation, @searchRequest, vector)
        (0...productListingPages.length).each do |index|
            if productListingPages[index] == nil
                break
            end
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().STATICPAGEGENERATIONLOGGING)
                @logUtil.putF("Saving Listing: " + (index).to_s, self, "generateAll()")
            end
            indexStr = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
            if index > 0
                indexStr = index.to_s
            end
            keywordFilenameHashMap.put(keywordData, pageName + indexStr)
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append(staticPath.to_s)
            stringBuffer.append(pageName)
            stringBuffer.append(indexStr)
            stringBuffer.append(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().EXTENSION_SEP)
            stringBuffer.append(::Org::Allbinary::Logic::Io::InputOutputTypeData.getInstance().DEFAULT)
            file = stringBuffer.to_s
            if !@directory.create(staticPath)
                raise StandardError.new("Could Not Create Directory: " + (staticPath).to_s)
            end
            self.savePage(file, productListingPages[index])
        end
    end
    java_overload :create, 4
    

    def addStaticPageInfoToDatabase(storeFront, keywordFilenameHashMap)
        keywordHashSet = keywordFilenameHashMap.keySet()
        keywordArray = keywordHashSet.toArray()
        size = keywordArray.length
        (0...size).each do |index|
            insertVector = ::Org::Allbinary::Util::BasicArrayListD.new()
            keywordData = keywordArray[index]
            fileName = keywordFilenameHashMap.get(keywordData)
            insertVector.add(storeFront.getName())
            insertVector.add(keywordData)
            insertVector.add(fileName)
            @staticPages.insert(insertVector)
        end
    end
    java_overload :addStaticPageInfoToDatabase, 2
    

    # throws Exception
    def generateAll_j0()
        begin
            storeFront = @searchRequest.getStoreFront()
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append(::Org::Allbinary::Globals::URLGLOBALS.getWebappPath())
            stringBuffer.append(storeFront.getName())
            stringBuffer.append(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR)
            stringBuffer.append(storeFront.getStaticPath())
            staticPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(stringBuffer.to_s, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().STATICPAGEGENERATIONLOGGING)
                @logUtil.putF("Store Static Pages Path: " + (staticPath).to_s, self, "generateAll()")
            end
            keywordHashSet = self.getHashSet(storeFront)
            keywordArray = keywordHashSet.toArray()
            size = keywordArray.length
            keywordFilenameHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            if size == 0
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append("Products For ")
                stringBuffer.append(storeFront.getName())
                stringBuffer.append(" Store Not Found")
                return stringBuffer.to_s
            end
            inventorySearchUtil = ::Views::Generic::Inventory::InventorySearchUtil.getInstance()
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
    def generateAll_j1(storeName)
        begin
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            if storeName != nil
                if (storeName <=> ::Org::Allbinary::Globals::GLOBALS2::GENERATEALLSTORES) != 0
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

    def generateAll(*java_overload_args)
        return generateAll_j0(*java_overload_args) if java_overload_args.length == 0
        return generateAll_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method generateAll takes #{java_overload_args.length} arguments"
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Java; module Util; autoload :HashSet, "java/util/HashSet" unless const_defined?(:HashSet, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; autoload :BasicItemData, "org/allbinary/business/user/commerce/inventory/item/BasicItemData" unless const_defined?(:BasicItemData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module Context; module ModulePackage; module Storefronts; autoload :StoreFrontsEntity, "org/allbinary/data/tables/context/module/storefronts/StoreFrontsEntity" unless const_defined?(:StoreFrontsEntity, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module Staticpages; autoload :StaticPagesEntity, "org/allbinary/data/tables/staticpages/StaticPagesEntity" unless const_defined?(:StaticPagesEntity, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Item; autoload :InventoryEntity, "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntity" unless const_defined?(:InventoryEntity, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :GLOBALS2, "org/allbinary/globals/GLOBALS2" unless const_defined?(:GLOBALS2, false); end; end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Search; autoload :SearchParams, "org/allbinary/logic/control/search/SearchParams" unless const_defined?(:SearchParams, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Search; autoload :SearchRequest, "org/allbinary/logic/control/search/SearchRequest" unless const_defined?(:SearchRequest, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :AbDataOutputStream, "org/allbinary/logic/io/AbDataOutputStream" unless const_defined?(:AbDataOutputStream, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :DataOutputStreamFactory, "org/allbinary/logic/io/DataOutputStreamFactory" unless const_defined?(:DataOutputStreamFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :InputOutputTypeData, "org/allbinary/logic/io/InputOutputTypeData" unless const_defined?(:InputOutputTypeData, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :StreamUtil, "org/allbinary/logic/io/StreamUtil" unless const_defined?(:StreamUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; module Directory; autoload :Directory, "org/allbinary/logic/io/file/directory/Directory" unless const_defined?(:Directory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :SpecialCharacterUtil, "org/allbinary/logic/string/SpecialCharacterUtil" unless const_defined?(:SpecialCharacterUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; module Regex; module Replace; autoload :Replace, "org/allbinary/logic/string/regex/replace/Replace" unless const_defined?(:Replace, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; module Tokens; autoload :UniqueTokens, "org/allbinary/logic/string/tokens/UniqueTokens" unless const_defined?(:UniqueTokens, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :ServiceClientInformationInterfaceFactory, "org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory" unless const_defined?(:ServiceClientInformationInterfaceFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonPhoneStrings, "org/allbinary/string/CommonPhoneStrings" unless const_defined?(:CommonPhoneStrings, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Views; module Generic; module Inventory; autoload :InventoryColumnUtil, "views/generic/inventory/InventoryColumnUtil" unless const_defined?(:InventoryColumnUtil, false); end; end; end
module ::Views; module Generic; module Inventory; autoload :InventorySearchUtil, "views/generic/inventory/InventorySearchUtil" unless const_defined?(:InventorySearchUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end

