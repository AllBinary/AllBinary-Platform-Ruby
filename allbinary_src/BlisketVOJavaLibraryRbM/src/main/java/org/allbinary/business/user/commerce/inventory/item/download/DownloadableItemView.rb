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
# package org.allbinary.business.user.commerce.inventory.item.download

# require "java/util/Set"
require "org/allbinary/data/tree/dom/DomNodeInterface"

class DownloadableItemView
    include DomNodeInterface
    attr_accessor :logUtil, :commonStrings, :downloadableItem

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @downloadableItem = nil
    end
    

    def initialize(downloadableItem)
        initialize_fields
        @downloadableItem = downloadableItem
    end
    

    # throws Exception
    def toXmlNode(document)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGING)
            @logUtil.putF(@commonStrings.START, self, "toXmlNode")
        end
        hashMap = @downloadableItem.toHashMap()
        totalTime = @downloadableItem.getValidTime().to_i
        calendar = Calendar.getInstance()
        year = calendar.get(Calendar::YEAR)
        month = calendar.get(Calendar::MONTH)
        day = calendar.get(Calendar::DAY_OF_MONTH)
        hour = calendar.get(Calendar::HOUR)
        minute = calendar.get(Calendar::MINUTE)
        second = calendar.get(Calendar::SECOND)
        calendar.setTimeInMillis(calendar.getTimeInMillis() + totalTime)
        yearDelta = calendar.get(Calendar::YEAR)
        monthDelta = calendar.get(Calendar::MONTH)
        dayDelta = calendar.get(Calendar::DAY_OF_MONTH)
        hourDelta = calendar.get(Calendar::HOUR)
        minuteDelta = calendar.get(Calendar::MINUTE)
        secondDelta = calendar.get(Calendar::SECOND)
        hashMap.put(DownloadItemData::VALID_TIME_YEARS, (yearDelta - year).to_s)
        hashMap.put(DownloadItemData::VALID_TIME_MONTHS, (monthDelta - month).to_s)
        hashMap.put(DownloadItemData::VALID_TIME_DAYS, (dayDelta - day).to_s)
        hashMap.put(DownloadItemData::VALID_TIME_HOURS, (hourDelta - hour).to_s)
        hashMap.put(DownloadItemData::VALID_TIME_MINUTES, (minuteDelta - minute).to_s)
        hashMap.put(DownloadItemData::VALID_TIME_SECONDS, (secondDelta - second).to_s)
        keySet = hashMap.keySet()
        node = document.createElement(DownloadItemData::NAME)
        stringUtil = StringUtil.getInstance()
        nameArray = keySet.toArray()
        size = nameArray.length
        (0...size).each do |index|
            name = nameArray[index]
            value = hashMap.get(name)
            value = stringUtil.getNonNull(value)
            node.appendChild(ModDomHelper.createNameValueNodes(document, name, value))
        end
        return node
    end
    

    def toXmlDoc()
        return nil
    end
    

    def view()
        return nil
    end
end

require "java/util/Calendar"
require "java/util/HashMap"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonStrings"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/business/user/commerce/inventory/item/download/DownloadItemData"
require "org/allbinary/business/user/commerce/inventory/item/download/DownloadableItem"

