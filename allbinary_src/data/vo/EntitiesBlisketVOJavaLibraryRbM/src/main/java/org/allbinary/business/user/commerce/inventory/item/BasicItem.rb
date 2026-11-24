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
# package org.allbinary.business.user.commerce.inventory.item

require "java/lang/JavaOverload"
require "org/allbinary/business/user/commerce/inventory/item/ItemInterface"

module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item

class BasicItem
    include ItemInterface
    attr_accessor :logUtil, :commonStrings, :basicItemData, :itemId, :number, :inBaskets, :weight, :enabled, :newOrUsed, :summary, :distributor, :idUsedByDistributor, :producedBy, :productionDate, :startProductionDate, :description, :keywords, :category, :type, :smallImage, :mediumImage, :largeImage, :price, :comment, :customs, :downloads, :groups, :options, :permissions, :specials, :downloadable, :timeEntered, :lastModified

    def jfields_org_allbinary_business_user_commerce_inventory_item_BasicItem
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @basicItemData = BasicItemData.getInstance()
        @itemId = nil unless instance_variable_defined?(:@itemId)
        @number = nil unless instance_variable_defined?(:@number)
        @inBaskets = nil unless instance_variable_defined?(:@inBaskets)
        @weight = nil unless instance_variable_defined?(:@weight)
        @enabled = nil unless instance_variable_defined?(:@enabled)
        @newOrUsed = nil unless instance_variable_defined?(:@newOrUsed)
        @summary = nil unless instance_variable_defined?(:@summary)
        @distributor = nil unless instance_variable_defined?(:@distributor)
        @idUsedByDistributor = nil unless instance_variable_defined?(:@idUsedByDistributor)
        @producedBy = nil unless instance_variable_defined?(:@producedBy)
        @productionDate = nil unless instance_variable_defined?(:@productionDate)
        @startProductionDate = nil unless instance_variable_defined?(:@startProductionDate)
        @description = nil unless instance_variable_defined?(:@description)
        @keywords = nil unless instance_variable_defined?(:@keywords)
        @category = nil unless instance_variable_defined?(:@category)
        @type = nil unless instance_variable_defined?(:@type)
        @smallImage = nil unless instance_variable_defined?(:@smallImage)
        @mediumImage = nil unless instance_variable_defined?(:@mediumImage)
        @largeImage = nil unless instance_variable_defined?(:@largeImage)
        @price = nil unless instance_variable_defined?(:@price)
        @comment = nil unless instance_variable_defined?(:@comment)
        @customs = nil unless instance_variable_defined?(:@customs)
        @downloads = nil unless instance_variable_defined?(:@downloads)
        @groups = nil unless instance_variable_defined?(:@groups)
        @options = nil unless instance_variable_defined?(:@options)
        @permissions = nil unless instance_variable_defined?(:@permissions)
        @specials = nil unless instance_variable_defined?(:@specials)
        @downloadable = false unless instance_variable_defined?(:@downloadable)
        @timeEntered = nil unless instance_variable_defined?(:@timeEntered)
        @lastModified = nil unless instance_variable_defined?(:@lastModified)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_business_user_commerce_inventory_item_BasicItem_1(*args)
        when 0 then jnew_org_allbinary_business_user_commerce_inventory_item_BasicItem_0(*args)
        else raise ArgumentError, "No constructor of BasicItem takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_business_user_commerce_inventory_item_BasicItem_1(itemHashMap)
        jfields_org_allbinary_business_user_commerce_inventory_item_BasicItem
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGING)
            @logUtil.putF(@commonStrings.START, self, "Constructor(HashMap)")
        end
        @itemId = itemHashMap.get(@basicItemData.ID)
        @number = itemHashMap.get(@basicItemData.NUMBER)
        @inBaskets = itemHashMap.get(@basicItemData.INBASKETS)
        @weight = itemHashMap.get(@basicItemData.WEIGHT)
        @enabled = itemHashMap.get(::Org::Allbinary::Business::Entry::EntryData.getInstance().ENABLE)
        @newOrUsed = itemHashMap.get(@basicItemData.NEWORUSED)
        @summary = itemHashMap.get(@basicItemData.SUMMARY)
        @distributor = itemHashMap.get(@basicItemData.DISTRIBUTOR)
        @idUsedByDistributor = itemHashMap.get(@basicItemData.IDUSEDBYDISTRIBUTOR)
        @producedBy = itemHashMap.get(@basicItemData.PRODUCEDBY)
        @productionDate = itemHashMap.get(@basicItemData.PRODUCTIONDATE)
        @startProductionDate = itemHashMap.get(@basicItemData.STARTPRODUCTIONDATE)
        @description = itemHashMap.get(@basicItemData.DESCRIPTION)
        @keywords = itemHashMap.get(@basicItemData.KEYWORDS)
        @category = itemHashMap.get(@basicItemData.CATEGORY)
        @type = itemHashMap.get(@basicItemData.TYPE)
        @smallImage = itemHashMap.get(@basicItemData.SMALLIMAGE)
        @mediumImage = itemHashMap.get(@basicItemData.MEDIUMIMAGE)
        @largeImage = itemHashMap.get(@basicItemData.LARGEIMAGE)
        @timeEntered = itemHashMap.get(::Org::Allbinary::Business::Entry::EntryData.getInstance().TIMECREATED)
        @lastModified = itemHashMap.get(::Org::Allbinary::Business::Entry::EntryData.getInstance().LASTMODIFIED)
        @price = ::Org::Allbinary::Business::User::Commerce::Money::Money.new(itemHashMap.get(@basicItemData.PRICE))
        @comment = itemHashMap.get(@basicItemData.COMMENT)
        @customs = itemHashMap.get(@basicItemData.CUSTOMS)
        self.setDownloads(itemHashMap.get(@basicItemData.DOWNLOADS))
        @groups = itemHashMap.get(@basicItemData.GROUPS)
        @options = itemHashMap.get(@basicItemData.OPTIONS)
        @permissions = itemHashMap.get(@basicItemData.PERMISSIONS)
        @specials = itemHashMap.get(@basicItemData.SPECIALS)
    end
    

    def jnew_org_allbinary_business_user_commerce_inventory_item_BasicItem_0()
        jfields_org_allbinary_business_user_commerce_inventory_item_BasicItem
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGING)
            @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        end
        _EMPTY = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        @itemId = ::Org::Allbinary::DataPackage::Generator::ProductIdGenerator.new().getNext()
        @number = ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().ZERO
        @inBaskets = _EMPTY
        @weight = _EMPTY
        @enabled = _EMPTY
        @newOrUsed = _EMPTY
        @summary = _EMPTY
        @distributor = _EMPTY
        @idUsedByDistributor = _EMPTY
        @producedBy = _EMPTY
        @productionDate = _EMPTY
        @startProductionDate = _EMPTY
        @description = _EMPTY
        @keywords = _EMPTY
        @category = _EMPTY
        @type = _EMPTY
        @smallImage = _EMPTY
        @mediumImage = _EMPTY
        @largeImage = _EMPTY
        @timeEntered = _EMPTY
        @lastModified = _EMPTY
        @price = ::Org::Allbinary::Business::User::Commerce::Money::Money.new()
        @comment = _EMPTY
        @customs = _EMPTY
        self.setDownloads(_EMPTY)
        @groups = _EMPTY
        @options = _EMPTY
        @permissions = _EMPTY
        @specials = _EMPTY
    end
    

    def setId(itemId)
        @itemId = itemId
    end
    java_overload :setId, 1
    

    def setNumber(number)
        @number = number
    end
    java_overload :setNumber, 1
    

    def setInBaskets(value)
        @inBaskets = value
    end
    java_overload :setInBaskets, 1
    

    def setWeight(value)
        @weight = value
    end
    java_overload :setWeight, 1
    

    def setNewOrUsed(value)
        @newOrUsed = value
    end
    java_overload :setNewOrUsed, 1
    

    def setSummary(value)
        @summary = value
    end
    java_overload :setSummary, 1
    

    def setDistributor(value)
        @distributor = value
    end
    java_overload :setDistributor, 1
    

    def setIdUsedByDistributor(value)
        @idUsedByDistributor = value
    end
    java_overload :setIdUsedByDistributor, 1
    

    def setProducedBy(value)
        @producedBy = value
    end
    java_overload :setProducedBy, 1
    

    def setProductionDate(value)
        @productionDate = value
    end
    java_overload :setProductionDate, 1
    

    def setStartProductionDate(value)
        @startProductionDate = value
    end
    java_overload :setStartProductionDate, 1
    

    def setDescription(value)
        @description = value
    end
    java_overload :setDescription, 1
    

    def setKeywords(value)
        @keywords = value
    end
    java_overload :setKeywords, 1
    

    def setCategory(value)
        @category = value
    end
    java_overload :setCategory, 1
    

    def setType(value)
        @type = value
    end
    java_overload :setType, 1
    

    def setSmallImage(value)
        @smallImage = value
    end
    java_overload :setSmallImage, 1
    

    def setMediumImage(value)
        @mediumImage = value
    end
    java_overload :setMediumImage, 1
    

    def setLargeImage(value)
        @largeImage = value
    end
    java_overload :setLargeImage, 1
    

    def setTimeEntered(value)
        @timeEntered = value
    end
    java_overload :setTimeEntered, 1
    

    def setLastModified(value)
        @lastModified = value
    end
    java_overload :setLastModified, 1
    

    def setPrice(value)
        @price = value
    end
    java_overload :setPrice, 1
    

    def setComment(value)
        @comment = value
    end
    java_overload :setComment, 1
    

    def setCustoms(value)
        @customs = value
    end
    java_overload :setCustoms, 1
    

    def setDownloads(value)
        @downloads = value
        if !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(@downloads)
            downloadInteger = (@downloads).to_s
            if downloadInteger.to_i != 0
                self.setDownloadable(true)
            end
        end
    end
    java_overload :setDownloads, 1
    

    def setGroups(value)
        @groups = value
    end
    java_overload :setGroups, 1
    

    def setOptions(value)
        @options = value
    end
    java_overload :setOptions, 1
    

    def setPermissions(value)
        @permissions = value
    end
    java_overload :setPermissions, 1
    

    def setSpecials(value)
        @specials = value
    end
    java_overload :setSpecials, 1
    

    def setEnabled(value)
        @enabled = value
    end
    java_overload :setEnabled, 1
    

    def getId()
        return @itemId
    end
    java_overload :getId, 0
    

    def getNumber()
        return @number
    end
    java_overload :getNumber, 0
    

    def getInBaskets()
        return @inBaskets
    end
    java_overload :getInBaskets, 0
    

    def getWeight()
        return @weight
    end
    java_overload :getWeight, 0
    

    def getNewOrUsed()
        return @newOrUsed
    end
    java_overload :getNewOrUsed, 0
    

    def getSummary()
        return @summary
    end
    java_overload :getSummary, 0
    

    def getDistributor()
        return @distributor
    end
    java_overload :getDistributor, 0
    

    def getIdUsedByDistributor()
        return @idUsedByDistributor
    end
    java_overload :getIdUsedByDistributor, 0
    

    def getProducedBy()
        return @producedBy
    end
    java_overload :getProducedBy, 0
    

    def getProductionDate()
        return @productionDate
    end
    java_overload :getProductionDate, 0
    

    def getStartProductionDate()
        return @startProductionDate
    end
    java_overload :getStartProductionDate, 0
    

    def getDescription()
        return @description
    end
    java_overload :getDescription, 0
    

    def getKeywords()
        return @keywords
    end
    java_overload :getKeywords, 0
    

    def getCategory()
        return @category
    end
    java_overload :getCategory, 0
    

    def getType()
        return @type
    end
    java_overload :getType, 0
    

    def getSmallImage()
        return @smallImage
    end
    java_overload :getSmallImage, 0
    

    def getMediumImage()
        return @mediumImage
    end
    java_overload :getMediumImage, 0
    

    def getLargeImage()
        return @largeImage
    end
    java_overload :getLargeImage, 0
    

    def getTimeEntered()
        return @timeEntered
    end
    java_overload :getTimeEntered, 0
    

    def getLastModified()
        return @lastModified
    end
    java_overload :getLastModified, 0
    

    def getPrice()
        return @price
    end
    java_overload :getPrice, 0
    

    def getComment()
        return @comment
    end
    java_overload :getComment, 0
    

    def getCustoms()
        return @customs
    end
    java_overload :getCustoms, 0
    

    def getDownloads()
        return @downloads
    end
    java_overload :getDownloads, 0
    

    def getGroups()
        return @groups
    end
    java_overload :getGroups, 0
    

    def getOptions()
        return @options
    end
    java_overload :getOptions, 0
    

    def getPermissions()
        return @permissions
    end
    java_overload :getPermissions, 0
    

    def getSpecials()
        return @specials
    end
    java_overload :getSpecials, 0
    

    def setDownloadable(downloadable)
        @downloadable = downloadable
    end
    java_overload :setDownloadable, 1
    

    def isDownloadable()
        return @downloadable
    end
    java_overload :isDownloadable, 0
    

    def getEnabled()
        return @enabled
    end
    java_overload :getEnabled, 0
    

    def getTotal()
        itemTotal = ::Org::Allbinary::Business::User::Commerce::Money::Money.new(@price)
        itemTotal.multiply(@number.to_i)
        return itemTotal
    end
    java_overload :getTotal, 0
    

    def toHashMap()
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGING)
            @logUtil.putF(@commonStrings.START, self, "toHashMap")
        end
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        hashMap.put(@basicItemData.ID, @itemId)
        hashMap.put(@basicItemData.NUMBER, @number)
        hashMap.put(@basicItemData.INBASKETS, @inBaskets)
        hashMap.put(@basicItemData.WEIGHT, @weight)
        hashMap.put(::Org::Allbinary::Business::Entry::EntryData.getInstance().ENABLE, @enabled)
        hashMap.put(@basicItemData.NEWORUSED, @newOrUsed)
        hashMap.put(@basicItemData.SUMMARY, @summary)
        hashMap.put(@basicItemData.DISTRIBUTOR, @distributor)
        hashMap.put(@basicItemData.IDUSEDBYDISTRIBUTOR, @idUsedByDistributor)
        hashMap.put(@basicItemData.PRODUCEDBY, @producedBy)
        hashMap.put(@basicItemData.PRODUCTIONDATE, @productionDate)
        hashMap.put(@basicItemData.STARTPRODUCTIONDATE, @startProductionDate)
        hashMap.put(@basicItemData.DESCRIPTION, @description)
        hashMap.put(@basicItemData.KEYWORDS, @keywords)
        hashMap.put(@basicItemData.CATEGORY, @category)
        hashMap.put(@basicItemData.TYPE, @type)
        hashMap.put(@basicItemData.SMALLIMAGE, @smallImage)
        hashMap.put(@basicItemData.MEDIUMIMAGE, @mediumImage)
        hashMap.put(@basicItemData.LARGEIMAGE, @largeImage)
        calendar = ::Java::Util::Calendar.getInstance()
        time = calendar.getTimeInMillis().to_s
        hashMap.put(::Org::Allbinary::Business::Entry::EntryData.getInstance().LASTMODIFIED, time)
        hashMap.put(@basicItemData.PRICE, @price.to_s)
        hashMap.put(@basicItemData.COMMENT, @comment)
        hashMap.put(@basicItemData.CUSTOMS, @customs)
        hashMap.put(@basicItemData.DOWNLOADS, self.getDownloads())
        hashMap.put(@basicItemData.GROUPS, @groups)
        hashMap.put(@basicItemData.OPTIONS, @options)
        hashMap.put(@basicItemData.PERMISSIONS, @permissions)
        hashMap.put(@basicItemData.SPECIALS, @specials)
        return hashMap
    end
    java_overload :toHashMap, 0
    

    def toVector()
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGING)
            @logUtil.putF(@commonStrings.START, self, "toVector")
        end
        values = ::Org::Allbinary::Util::BasicArrayListD.new()
        values.add(@itemId)
        values.add(@number)
        values.add(@inBaskets)
        values.add(@weight)
        values.add(@enabled)
        values.add(@newOrUsed)
        values.add(@summary)
        values.add(@distributor)
        values.add(@idUsedByDistributor)
        values.add(@producedBy)
        values.add(@productionDate)
        values.add(@startProductionDate)
        values.add(@description)
        values.add(@keywords)
        values.add(@category)
        values.add(@type)
        values.add(self.getSmallImage())
        values.add(self.getMediumImage())
        values.add(self.getLargeImage())
        calendar = ::Java::Util::Calendar.getInstance()
        time = calendar.getTimeInMillis().to_s
        values.add(time)
        values.add(time)
        values.add(@price.to_s)
        values.add(@comment)
        values.add(@customs)
        values.add(self.getDownloads())
        values.add(@groups)
        values.add(@options)
        values.add(@permissions)
        values.add(@specials)
        return values
    end
    java_overload :toVector, 0
    

    # throws Exception
    def getKey()
        return self.getId()
    end
    java_overload :getKey, 0
end

module ::Java; module Util; autoload :Calendar, "java/util/Calendar" unless const_defined?(:Calendar, false); end; end
module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Entry; autoload :EntryData, "org/allbinary/business/entry/EntryData" unless const_defined?(:EntryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; autoload :Money, "org/allbinary/business/user/commerce/money/Money" unless const_defined?(:Money, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; autoload :MoneyException, "org/allbinary/business/user/commerce/money/MoneyException" unless const_defined?(:MoneyException, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Generator; autoload :ProductIdGenerator, "org/allbinary/data/generator/ProductIdGenerator" unless const_defined?(:ProductIdGenerator, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonPhoneStrings, "org/allbinary/string/CommonPhoneStrings" unless const_defined?(:CommonPhoneStrings, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :BasicItemData, "org/allbinary/business/user/commerce/inventory/item/BasicItemData" unless const_defined?(:BasicItemData, false)

end; end; end; end; end; end; end

