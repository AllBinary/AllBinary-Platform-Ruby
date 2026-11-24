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

require "java/lang/JavaOverload"
# require "java/util/Set"
require "org/allbinary/data/tree/dom/DomNodeInterface"

module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; module Download

class DownloadableItemView
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :logUtil, :commonStrings, :downloadableItem

    def jfields_org_allbinary_business_user_commerce_inventory_item_download_DownloadableItemView
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @downloadableItem = nil unless instance_variable_defined?(:@downloadableItem)
    end
    

    def initialize(downloadableItem)
        jfields_org_allbinary_business_user_commerce_inventory_item_download_DownloadableItemView
        @downloadableItem = downloadableItem
    end
    

    # throws Exception
    def toXmlNode(document)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGING)
            @logUtil.putF(@commonStrings.START, self, "toXmlNode")
        end
        hashMap = @downloadableItem.toHashMap()
        totalTime = @downloadableItem.getValidTime().to_i
        calendar = ::Java::Util::Calendar.getInstance()
        year = calendar.get(::Java::Util::Calendar::YEAR)
        month = calendar.get(::Java::Util::Calendar::MONTH)
        day = calendar.get(::Java::Util::Calendar::DAY_OF_MONTH)
        hour = calendar.get(::Java::Util::Calendar::HOUR)
        minute = calendar.get(::Java::Util::Calendar::MINUTE)
        second = calendar.get(::Java::Util::Calendar::SECOND)
        calendar.setTimeInMillis(calendar.getTimeInMillis() + totalTime)
        yearDelta = calendar.get(::Java::Util::Calendar::YEAR)
        monthDelta = calendar.get(::Java::Util::Calendar::MONTH)
        dayDelta = calendar.get(::Java::Util::Calendar::DAY_OF_MONTH)
        hourDelta = calendar.get(::Java::Util::Calendar::HOUR)
        minuteDelta = calendar.get(::Java::Util::Calendar::MINUTE)
        secondDelta = calendar.get(::Java::Util::Calendar::SECOND)
        hashMap.put(DownloadItemData::VALID_TIME_YEARS, (yearDelta - year).to_s)
        hashMap.put(DownloadItemData::VALID_TIME_MONTHS, (monthDelta - month).to_s)
        hashMap.put(DownloadItemData::VALID_TIME_DAYS, (dayDelta - day).to_s)
        hashMap.put(DownloadItemData::VALID_TIME_HOURS, (hourDelta - hour).to_s)
        hashMap.put(DownloadItemData::VALID_TIME_MINUTES, (minuteDelta - minute).to_s)
        hashMap.put(DownloadItemData::VALID_TIME_SECONDS, (secondDelta - second).to_s)
        keySet = hashMap.keySet()
        node = document.createElement(DownloadItemData::NAME)
        stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        nameArray = keySet.toArray()
        size = nameArray.length
        (0...size).each do |index|
            name = nameArray[index]
            value = hashMap.get(name)
            value = stringUtil.getNonNull(value)
            node.appendChild(::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, name, value))
        end
        return node
    end
    java_overload :toXmlNode, 1
    

    def toXmlDoc()
        return nil
    end
    java_overload :toXmlDoc, 0
    

    def view()
        return nil
    end
    java_overload :view, 0
end

module ::Java; module Util; autoload :Calendar, "java/util/Calendar" unless const_defined?(:Calendar, false); end; end
module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :DownloadItemData, "org/allbinary/business/user/commerce/inventory/item/download/DownloadItemData" unless const_defined?(:DownloadItemData, false)
autoload :DownloadableItem, "org/allbinary/business/user/commerce/inventory/item/download/DownloadableItem" unless const_defined?(:DownloadableItem, false)

end; end; end; end; end; end; end; end

