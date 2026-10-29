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


class InventoryColumnUtil
    attr_accessor :logUtil, :basicItemData

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @basicItemData = BasicItemData.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return InventoryColumnUtil.instance
    end
    

    def getColumnWhereLike(inventoryEntity, category, column)
        @logUtil.putF("Start Category: " + category, self, "getKeywords")
        keywords = BasicArrayListD.new()
        vectorOfHashMaps = inventoryEntity.getAllRows()
        size = vectorOfHashMaps.size()
        (0...size).each do |index|
            hashMap = vectorOfHashMaps.get(index)
            categoryName = hashMap.get(@basicItemData.CATEGORY)
            if !StringValidationUtil.getInstance().isEmpty(categoryName) && categoryName.start_with?(category)
                keywords.add(hashMap.get(column))
            end
        end
        return keywords
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/user/commerce/inventory/item/BasicItemData"
require "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntity"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringValidationUtil"

class InventoryColumnUtil
    @@instance = InventoryColumnUtil.new()
end

