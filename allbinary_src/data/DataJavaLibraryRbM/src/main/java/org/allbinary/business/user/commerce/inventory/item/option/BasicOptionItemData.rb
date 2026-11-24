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
# package org.allbinary.business.user.commerce.inventory.item.option


module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; module Option

class BasicOptionItemData

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:OPTION_ONE_TITLE, "BASICOPTIONITEM_OPTION_ONE_TITLE")
        const_set(:DEFAULT_OPTION_ITEM, "BASICOPTIONITEM_DEFAULT_OPTION_ITEM")
        const_set(:DEFAULT_OPTION_VALUE, "BASICOPTIONITEM_DEFAULT_OPTION_VALUE")
        const_set(:OPTION_ONE_ONE_ITEM, "BASICOPTIONITEM_OPTION_ONE_ONE_ITEM")
        const_set(:OPTION_ONE_ONE_VALUE, "BASICOPTIONITEM_OPTION_ONE_ONE_VALUE")
        const_set(:OPTION_ONE_TWO_ITEM, "BASICOPTIONITEM_OPTION_ONE_TWO_ITEM")
        const_set(:OPTION_ONE_TWO_VALUE, "BASICOPTIONITEM_OPTION_ONE_TWO_VALUE")
        const_set(:OPTION_ONE_THREE_ITEM, "BASICOPTIONITEM_OPTION_ONE_THREE_ITEM")
        const_set(:OPTION_ONE_THREE_VALUE, "BASICOPTIONITEM_OPTION_ONE_THREE_VALUE")
        const_set(:OPTION_ONE_FOUR_ITEM, "BASICOPTIONITEM_OPTION_ONE_FOUR_ITEM")
        const_set(:OPTION_ONE_FOUR_VALUE, "BASICOPTIONITEM_OPTION_ONE_FOUR_VALUE")
        const_set(:OPTION_ONE_FIVE_ITEM, "BASICOPTIONITEM_OPTION_ONE_FIVE_ITEM")
        const_set(:OPTION_ONE_FIVE_VALUE, "BASICOPTIONITEM_OPTION_ONE_FIVE_VALUE")
        const_set(:OPTION_ONE_SIX_ITEM, "BASICOPTIONITEM_OPTION_ONE_SIX_ITEM")
        const_set(:OPTION_ONE_SIX_VALUE, "BASICOPTIONITEM_OPTION_ONE_SIX_VALUE")
        const_set(:OPTION_ONE_SEVEN_ITEM, "BASICOPTIONITEM_OPTION_ONE_SEVEN_ITEM")
        const_set(:OPTION_ONE_SEVEN_VALUE, "BASICOPTIONITEM_OPTION_ONE_SEVEN_VALUE")
        const_set(:OPTION_ONE_EIGHT_ITEM, "BASICOPTIONITEM_OPTION_ONE_EIGHT_ITEM")
        const_set(:OPTION_ONE_EIGHT_VALUE, "BASICOPTIONITEM_OPTION_ONE_EIGHT_VALUE")
        const_set(:OPTION_ONE_NINE_ITEM, "BASICOPTIONITEM_OPTION_ONE_NINE_ITEM")
        const_set(:OPTION_ONE_NINE_VALUE, "BASICOPTIONITEM_OPTION_ONE_NINE_VALUE")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BasicOptionItemData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:OPTION_ONE_TITLE, :DEFAULT_OPTION_ITEM, :DEFAULT_OPTION_VALUE, :OPTION_ONE_ONE_ITEM, :OPTION_ONE_ONE_VALUE, :OPTION_ONE_TWO_ITEM, :OPTION_ONE_TWO_VALUE, :OPTION_ONE_THREE_ITEM, :OPTION_ONE_THREE_VALUE, :OPTION_ONE_FOUR_ITEM, :OPTION_ONE_FOUR_VALUE, :OPTION_ONE_FIVE_ITEM, :OPTION_ONE_FIVE_VALUE, :OPTION_ONE_SIX_ITEM, :OPTION_ONE_SIX_VALUE, :OPTION_ONE_SEVEN_ITEM, :OPTION_ONE_SEVEN_VALUE, :OPTION_ONE_EIGHT_ITEM, :OPTION_ONE_EIGHT_VALUE, :OPTION_ONE_NINE_ITEM, :OPTION_ONE_NINE_VALUE].include?(name)
        end
        super
    end
end

begin
    BasicOptionItemData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end

