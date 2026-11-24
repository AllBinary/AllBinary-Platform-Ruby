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
# package org.allbinary.business.user.commerce.inventory.basket


module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Basket

class BasketData
    

    def initialize()
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:BASKET, "BASKET")
        const_set(:NAME, "NAME")
        const_set(:BASKETREVIEW, "BASKET_REVIEW")
        const_set(:TOTALWEIGHT, "BASKET_TOTALWEIGTH")
        const_set(:ITEMTOTAL, "BASKET_ITEMTOTAL")
        const_set(:ITEMTOTALINBASKET, "BASKET_ITEMTOTALINBASKET")
        const_set(:SUBTOTAL, "BASKET_SUBTOTAL")
        const_set(:ISEMPTY, "BASKET_ISEMPTY")
        const_set(:INSERT, "BASKET_INSERT")
        const_set(:DELETE, "BASKET_DELETE")
        const_set(:ADJUST, "BASKET_ADJUST")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BasketData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:BASKET, :NAME, :BASKETREVIEW, :TOTALWEIGHT, :ITEMTOTAL, :ITEMTOTALINBASKET, :SUBTOTAL, :ISEMPTY, :INSERT, :DELETE, :ADJUST].include?(name)
        end
        super
    end
end

begin
    BasketData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

