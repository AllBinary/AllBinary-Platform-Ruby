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


class BasicItemData
    attr_accessor :ITEM, :TOTAL, :ID, :NUMBER, :INBASKETS, :WEIGHT, :NEWORUSED, :SUMMARY, :DISTRIBUTOR, :IDUSEDBYDISTRIBUTOR, :PRODUCEDBY, :PRODUCTIONDATE, :STARTPRODUCTIONDATE, :DESCRIPTION, :KEYWORDS, :CATEGORY, :TYPE, :IMAGE, :SMALLIMAGE, :MEDIUMIMAGE, :LARGEIMAGE, :PRICE, :COMMENT, :CUSTOMS, :DOWNLOADS, :GROUPS, :OPTIONS, :PERMISSIONS, :SPECIALS

    def initialize_fields
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
        initialize_fields
    end
    

    def self.getInstance()
        return BasicItemData.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class BasicItemData
    @@instance = BasicItemData.new()
end

