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
# package org.allbinary.business.user.commerce.inventory.order


module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order

class OrderData

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:ORDERS, "ORDERS")
        const_set(:ORDER, "ORDER")
        const_set(:ID, "ORDER_ID")
        const_set(:CUSTOMERCOMMENT, "ORDER_CUSTOMER_COMMENT")
        const_set(:CUSTOMERCANCELCOMMENT, "ORDER_CUSTOMER_CANCEL_COMMENT")
        const_set(:STORECOMMENT, "ORDER_STORE_COMMENT")
        const_set(:STORECANCELCOMMENT, "ORDER_STORE_CANCEL_COMMENT")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "OrderData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:ORDERS, :ORDER, :ID, :CUSTOMERCOMMENT, :CUSTOMERCANCELCOMMENT, :STORECOMMENT, :STORECANCELCOMMENT].include?(name)
        end
        super
    end
end

begin
    OrderData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

