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


module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item

class BasicItemData
    attr_accessor :ITEM, :TOTAL, :ID, :NUMBER, :INBASKETS, :WEIGHT, :NEWORUSED, :SUMMARY, :DISTRIBUTOR, :IDUSEDBYDISTRIBUTOR, :PRODUCEDBY, :PRODUCTIONDATE, :STARTPRODUCTIONDATE, :DESCRIPTION, :KEYWORDS, :CATEGORY, :TYPE, :IMAGE, :SMALLIMAGE, :MEDIUMIMAGE, :LARGEIMAGE, :PRICE, :COMMENT, :CUSTOMS, :DOWNLOADS, :GROUPS, :OPTIONS, :PERMISSIONS, :SPECIALS

    def jfields_org_allbinary_business_user_commerce_inventory_item_BasicItemData
        @ITEM = "BASICITEM"
        @TOTAL = "BASICITEM_TOTAL"
        @ID = "BASICITEM_ID"
        @NUMBER = "BASICITEM_NUMBER"
        @INBASKETS = "BASICITEM_IN_BASKETS"
        @WEIGHT = "BASICITEM_WEIGHT"
        @NEWORUSED = "BASICITEM_NEW_OR_USED"
        @SUMMARY = "BASICITEM_SUMMARY"
        @DISTRIBUTOR = "BASICITEM_DISTRIBUTOR"
        @IDUSEDBYDISTRIBUTOR = "BASICITEM_IDUSEDBYDISTRIBUTOR"
        @PRODUCEDBY = "BASICITEM_PRODUCEDBY"
        @PRODUCTIONDATE = "BASICITEM_PRODUCTIONDATE"
        @STARTPRODUCTIONDATE = "BASICITEM_STARTPRODUCTIONDATE"
        @DESCRIPTION = "BASICITEM_DESCRIPTION"
        @KEYWORDS = "BASICITEM_KEYWORDS"
        @CATEGORY = "BASICITEM_CATEGORY"
        @TYPE = "BASICITEM_TYPE"
        @IMAGE = "BASICITEM_IMG"
        @SMALLIMAGE = "BASICITEM_SMALL_IMG"
        @MEDIUMIMAGE = "BASICITEM_MEDIUM_IMG"
        @LARGEIMAGE = "BASICITEM_LARGE_IMG"
        @PRICE = "BASICITEM_PRICE"
        @COMMENT = "BASICITEM_COMMENT"
        @CUSTOMS = "BASICITEM_CUSTOMS"
        @DOWNLOADS = "BASICITEM_DOWNLOADS"
        @GROUPS = "BASICITEM_GROUPS"
        @OPTIONS = "BASICITEM_OPTIONS"
        @PERMISSIONS = "BASICITEM_PERMISSIONS"
        @SPECIALS = "BASICITEM_SPECIALS"
    end

    def initialize
        jfields_org_allbinary_business_user_commerce_inventory_item_BasicItemData
    end
    

    def self.getInstance()
        return @@instance
    end

    def self.instance()
        BasicItemData.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        BasicItemData.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = BasicItemData.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BasicItemData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    BasicItemData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

