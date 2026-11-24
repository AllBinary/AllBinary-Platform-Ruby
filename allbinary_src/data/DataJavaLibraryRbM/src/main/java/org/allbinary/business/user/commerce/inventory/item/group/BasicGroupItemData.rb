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
# package org.allbinary.business.user.commerce.inventory.item.group


module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; module Group

class BasicGroupItemData

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:ITEM_ONE, "BASICGROUPITEM_ONE")
        const_set(:ITEM_TWO, "BASICGROUPITEM_TWO")
        const_set(:ITEM_THREE, "BASICGROUPITEM_THREE")
        const_set(:ITEM_FOUR, "BASICGROUPITEM_FOUR")
        const_set(:ITEM_FIVE, "BASICGROUPITEM_FIVE")
        const_set(:ITEM_SIX, "BASICGROUPITEM_SIX")
        const_set(:ITEM_SEVEN, "BASICGROUPITEM_SEVEN")
        const_set(:ITEM_EIGHT, "BASICGROUPITEM_EIGHT")
        const_set(:ITEM_NINE, "BASICGROUPITEM_NINE")
        const_set(:ITEM_TEN, "BASICGROUPITEM_TEN")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BasicGroupItemData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:ITEM_ONE, :ITEM_TWO, :ITEM_THREE, :ITEM_FOUR, :ITEM_FIVE, :ITEM_SIX, :ITEM_SEVEN, :ITEM_EIGHT, :ITEM_NINE, :ITEM_TEN].include?(name)
        end
        super
    end
end

begin
    BasicGroupItemData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end

