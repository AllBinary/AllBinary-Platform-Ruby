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

require "org/allbinary/business/user/commerce/inventory/item/ItemInterface"

class BasicItem
    include ItemInterface
    attr_accessor :logUtil, :commonStrings, :basicItemData, :itemId, :number, :inBaskets, :weight, :enabled, :newOrUsed, :summary, :distributor, :idUsedByDistributor, :producedBy, :productionDate, :startProductionDate, :description, :keywords, :category, :type, :smallImage, :mediumImage, :largeImage, :price, :comment, :customs, :downloads, :groups, :options, :permissions, :specials, :downloadable, :timeEntered, :lastModified

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @basicItemData = BasicItemData.getInstance()
        @itemId = nil
        @number = nil
        @inBaskets = nil
        @weight = nil
        @enabled = nil
        @newOrUsed = nil
        @summary = nil
        @distributor = nil
        @idUsedByDistributor = nil
        @producedBy = nil
        @productionDate = nil
        @startProductionDate = nil
        @description = nil
        @keywords = nil
        @category = nil
        @type = nil
        @smallImage = nil
        @mediumImage = nil
        @largeImage = nil
        @price = nil
        @comment = nil
        @customs = nil
        @downloads = nil
        @groups = nil
        @options = nil
        @permissions = nil
        @specials = nil
        @downloadable = false
        @timeEntered = nil
        @lastModified = nil
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 0 then constructor0(*args)
        end
    end
    

    def constructor1(itemHashMap)
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGING)
            @logUtil.putF(@commonStrings.START, self, "Constructor(HashMap)")
        end
        @itemId = itemHashMap.get(@basicItemData.ID)
        @number = itemHashMap.get(@basicItemData.NUMBER)
        @inBaskets = itemHashMap.get(@basicItemData.INBASKETS)
        @weight = itemHashMap.get(@basicItemData.WEIGHT)
        @enabled = itemHashMap.get(EntryData.getInstance().ENABLE)
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
        @timeEntered = itemHashMap.get(EntryData.getInstance().TIMECREATED)
        @lastModified = itemHashMap.get(EntryData.getInstance().LASTMODIFIED)
        @price = Money.new(itemHashMap.get(@basicItemData.PRICE))
        @comment = itemHashMap.get(@basicItemData.COMMENT)
        @customs = itemHashMap.get(@basicItemData.CUSTOMS)
        self.setDownloads(itemHashMap.get(@basicItemData.DOWNLOADS))
        @groups = itemHashMap.get(@basicItemData.GROUPS)
        @options = itemHashMap.get(@basicItemData.OPTIONS)
        @permissions = itemHashMap.get(@basicItemData.PERMISSIONS)
        @specials = itemHashMap.get(@basicItemData.SPECIALS)
    end
    

    def constructor0()
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGING)
            @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        end
        _EMPTY = StringUtil.getInstance().EMPTY_STRING
        @itemId = ProductIdGenerator.new().getNext()
        @number = CommonPhoneStrings.getInstance().ZERO
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
        @price = Money.new()
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
    

    def setNumber(number)
        @number = number
    end
    

    def setInBaskets(value)
        @inBaskets = value
    end
    

    def setWeight(value)
        @weight = value
    end
    

    def setNewOrUsed(value)
        @newOrUsed = value
    end
    

    def setSummary(value)
        @summary = value
    end
    

    def setDistributor(value)
        @distributor = value
    end
    

    def setIdUsedByDistributor(value)
        @idUsedByDistributor = value
    end
    

    def setProducedBy(value)
        @producedBy = value
    end
    

    def setProductionDate(value)
        @productionDate = value
    end
    

    def setStartProductionDate(value)
        @startProductionDate = value
    end
    

    def setDescription(value)
        @description = value
    end
    

    def setKeywords(value)
        @keywords = value
    end
    

    def setCategory(value)
        @category = value
    end
    

    def setType(value)
        @type = value
    end
    

    def setSmallImage(value)
        @smallImage = value
    end
    

    def setMediumImage(value)
        @mediumImage = value
    end
    

    def setLargeImage(value)
        @largeImage = value
    end
    

    def setTimeEntered(value)
        @timeEntered = value
    end
    

    def setLastModified(value)
        @lastModified = value
    end
    

    def setPrice(value)
        @price = value
    end
    

    def setComment(value)
        @comment = value
    end
    

    def setCustoms(value)
        @customs = value
    end
    

    def setDownloads(value)
        @downloads = value
        if !StringValidationUtil.getInstance().isEmpty(@downloads)
            downloadInteger = (@downloads).to_s
            if downloadInteger.to_i != 0
                self.setDownloadable(true)
            end
        end
    end
    

    def setGroups(value)
        @groups = value
    end
    

    def setOptions(value)
        @options = value
    end
    

    def setPermissions(value)
        @permissions = value
    end
    

    def setSpecials(value)
        @specials = value
    end
    

    def setEnabled(value)
        @enabled = value
    end
    

    def getId()
        return @itemId
    end
    

    def getNumber()
        return @number
    end
    

    def getInBaskets()
        return @inBaskets
    end
    

    def getWeight()
        return @weight
    end
    

    def getNewOrUsed()
        return @newOrUsed
    end
    

    def getSummary()
        return @summary
    end
    

    def getDistributor()
        return @distributor
    end
    

    def getIdUsedByDistributor()
        return @idUsedByDistributor
    end
    

    def getProducedBy()
        return @producedBy
    end
    

    def getProductionDate()
        return @productionDate
    end
    

    def getStartProductionDate()
        return @startProductionDate
    end
    

    def getDescription()
        return @description
    end
    

    def getKeywords()
        return @keywords
    end
    

    def getCategory()
        return @category
    end
    

    def getType()
        return @type
    end
    

    def getSmallImage()
        return @smallImage
    end
    

    def getMediumImage()
        return @mediumImage
    end
    

    def getLargeImage()
        return @largeImage
    end
    

    def getTimeEntered()
        return @timeEntered
    end
    

    def getLastModified()
        return @lastModified
    end
    

    def getPrice()
        return @price
    end
    

    def getComment()
        return @comment
    end
    

    def getCustoms()
        return @customs
    end
    

    def getDownloads()
        return @downloads
    end
    

    def getGroups()
        return @groups
    end
    

    def getOptions()
        return @options
    end
    

    def getPermissions()
        return @permissions
    end
    

    def getSpecials()
        return @specials
    end
    

    def setDownloadable(downloadable)
        @downloadable = downloadable
    end
    

    def isDownloadable()
        return @downloadable
    end
    

    def getEnabled()
        return @enabled
    end
    

    def getTotal()
        itemTotal = Money.new(@price)
        itemTotal.multiply(@number.to_i)
        return itemTotal
    end
    

    def toHashMap()
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGING)
            @logUtil.putF(@commonStrings.START, self, "toHashMap")
        end
        hashMap = StdUtil.getInstance().createHashMap()
        hashMap.put(@basicItemData.ID, @itemId)
        hashMap.put(@basicItemData.NUMBER, @number)
        hashMap.put(@basicItemData.INBASKETS, @inBaskets)
        hashMap.put(@basicItemData.WEIGHT, @weight)
        hashMap.put(EntryData.getInstance().ENABLE, @enabled)
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
        calendar = Calendar.getInstance()
        time = calendar.getTimeInMillis().to_s
        hashMap.put(EntryData.getInstance().LASTMODIFIED, time)
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
    

    def toVector()
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGING)
            @logUtil.putF(@commonStrings.START, self, "toVector")
        end
        values = BasicArrayListD.new()
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
        calendar = Calendar.getInstance()
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
    

    # throws Exception
    def getKey()
        return self.getId()
    end
end

require "java/util/Calendar"
require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/entry/EntryData"
require "org/allbinary/business/user/commerce/money/Money"
require "org/allbinary/business/user/commerce/money/MoneyException"
require "org/allbinary/data/generator/ProductIdGenerator"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/string/CommonPhoneStrings"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/business/user/commerce/inventory/item/BasicItemData"

