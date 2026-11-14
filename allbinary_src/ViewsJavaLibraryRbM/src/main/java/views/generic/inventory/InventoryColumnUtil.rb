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
        InventoryColumnUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        InventoryColumnUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = InventoryColumnUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "InventoryColumnUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :BasicItemData, "org/allbinary/business/user/commerce/inventory/item/BasicItemData"
autoload :InventoryEntity, "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntity"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil"

begin
    InventoryColumnUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

