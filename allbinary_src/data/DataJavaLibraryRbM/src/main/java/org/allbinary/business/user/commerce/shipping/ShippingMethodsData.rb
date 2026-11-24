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
# package org.allbinary.business.user.commerce.shipping


module ::Org; module Allbinary; module Business; module User; module Commerce; module Shipping

class ShippingMethodsData

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:SHIPPINGMETHODSORDERSUMMARIES, "SHIPPINGMETHODS_ORDERSUMMARIES")
        const_set(:SHIPPINGMETHODORDERSUMMARY, "SHIPPINGMETHOD_ORDERSUMMARY")
        const_set(:SHIPPINGMETHODS, "SHIPPINGMETHODS")
        const_set(:NAME, "SHIPPINGMETHODS_NAME")
        const_set(:SHIPPINGCOST, "SHIPPINGMETHOD_SHIPPINGCOST")
        const_set(:TAXRATE, "SHIPPINGMETHOD_TAXRATE")
        const_set(:SUBTOTAL, "SHIPPINGMETHOD_SUBTOTAL")
        const_set(:TAX, "SHIPPINGMETHOD_TAX")
        const_set(:TOTAL, "SHIPPINGMETHOD_TOTAL")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ShippingMethodsData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SHIPPINGMETHODSORDERSUMMARIES, :SHIPPINGMETHODORDERSUMMARY, :SHIPPINGMETHODS, :NAME, :SHIPPINGCOST, :TAXRATE, :SUBTOTAL, :TAX, :TOTAL].include?(name)
        end
        super
    end
end

begin
    ShippingMethodsData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

