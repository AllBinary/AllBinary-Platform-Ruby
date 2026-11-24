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

class OrderHistoryData

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:MAXIDLEN, 19)
        const_set(:DATEDELTA, "DATE_DELTA")
        const_set(:DATETYPE, "DATE_TYPE")
        const_set(:TYPELONG, "TYPE_LONG")
        const_set(:TYPECAESAR, "TYPE_CAESAR")
        const_set(:TODATE, "TO_DATE")
        const_set(:FROMHOUR, "FROM_HOUR")
        const_set(:FROMDAY, "FROM_DAY")
        const_set(:FROMMONTH, "FROM_MONTH")
        const_set(:FROMYEAR, "FROM_YEAR")
        const_set(:TOHOUR, "TO_HOUR")
        const_set(:TODAY, "TO_DAY")
        const_set(:TOMONTH, "TO_MONTH")
        const_set(:TOYEAR, "TO_YEAR")
        const_set(:ORDERHISTORY, "ORDERHISTORY")
        const_set(:SHIPPEDDATE, "ORDERHISTORY_SHIPPED_DATE")
        const_set(:ORDERDATE, "ORDERHISTORY_ORDER_DATE")
        const_set(:TRANSDATE, "ORDERHISTORY_TRANS_DATE")
        const_set(:CANCELDATE, "ORDERHISTORY_CANCEL_DATE")
        const_set(:SHIPPEDDATEFORMATTED, "ORDERHISTORY_SHIPPED_DATE_FORMATTED")
        const_set(:ORDERDATEFORMATTED, "ORDERHISTORY_ORDER_DATE_FORMATTED")
        const_set(:TRANSDATEFORMATTED, "ORDERHISTORY_TRANS_DATE_FORMATTED")
        const_set(:CANCELDATEFORMATTED, "ORDERHISTORY_CANCEL_DATE_FORMATTED")
        const_set(:SUBTOTAL, "ORDERHISTORY_SUB_TOTAL")
        const_set(:SHIPPINGCOST, "ORDERHISTORY_SHIPPING_COST")
        const_set(:TAX, "ORDERHISTORY_TAX")
        const_set(:TOTAL, "ORDERHISTORY_TOTAL")
        const_set(:CANCELINFO, "ORDERHISTORY_CANCEL_INFO")
        const_set(:CANCELTYPE, "ORDERHISTORY_CANCEL_TYPE")
        const_set(:STATUS, "ORDERHISTORY_STATUS")
        const_set(:PREPROCESSINGNAME, "PREPROCESSING")
        const_set(:PROCESSINGNAME, "PROCESSING")
        const_set(:CANCELLEDNAME, "CANCELLED")
        const_set(:PARTIALLYSHIPPEDNAME, "PARTIALLYSHIPPED")
        const_set(:SHIPPEDNAME, "SHIPPED")
        const_set(:PREPROCESSING, "Order Preprocessing")
        const_set(:PROCESSING, "Order Processing")
        const_set(:CANCELLED, "Order Cancelled")
        const_set(:PARTIALLYSHIPPED, "Order Partially Shipped")
        const_set(:SHIPPED, "Order Shipped")
        const_set(:SETSTATUS, "Set Status")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "OrderHistoryData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:MAXIDLEN, :DATEDELTA, :DATETYPE, :TYPELONG, :TYPECAESAR, :TODATE, :FROMHOUR, :FROMDAY, :FROMMONTH, :FROMYEAR, :TOHOUR, :TODAY, :TOMONTH, :TOYEAR, :ORDERHISTORY, :SHIPPEDDATE, :ORDERDATE, :TRANSDATE, :CANCELDATE, :SHIPPEDDATEFORMATTED, :ORDERDATEFORMATTED, :TRANSDATEFORMATTED, :CANCELDATEFORMATTED, :SUBTOTAL, :SHIPPINGCOST, :TAX, :TOTAL, :CANCELINFO, :CANCELTYPE, :STATUS, :PREPROCESSINGNAME, :PROCESSINGNAME, :CANCELLEDNAME, :PARTIALLYSHIPPEDNAME, :SHIPPEDNAME, :PREPROCESSING, :PROCESSING, :CANCELLED, :PARTIALLYSHIPPED, :SHIPPED, :SETSTATUS].include?(name)
        end
        super
    end
end

begin
    OrderHistoryData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

