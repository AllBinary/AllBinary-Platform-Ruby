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
# package org.allbinary.business.user.commerce.money.payment


module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment

class PaymentData

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:MIN, 4)
        const_set(:MAX, 19)
        const_set(:ADDNEW, "Add New Payment")
        const_set(:VIEW, "View Payment")
        const_set(:SELECT, "Select Payment")
        const_set(:CHANGE, "Change Payment")
        const_set(:PAYMENT, "PAYMENT")
        const_set(:METHOD, "PAYMENT_METHOD")
        const_set(:ID, "PAYMENT_ID")
        const_set(:NUMBER, "PAYMENT_NUMBER")
        const_set(:NAME, "PAYMENT_NAME")
        const_set(:TYPE, "PAYMENT_TYPE")
        const_set(:EXPIRATION, "PAYMENT_EXPIRATION")
        const_set(:TENDERTYPE, "PAYMENT_TENDERTYPE")
        const_set(:TRANSACTIONTYPE, "PAYMENT_TRANSACTIONTYPE")
        const_set(:ABA, "PAYMENT_ABA")
        const_set(:ACCOUNT, "PAYMENT_ACCOUNT")
        const_set(:ACCOUNTTYPE, "PAYMENT_ACCOUNTTYPE")
        const_set(:AUTHORIZATIONCODE, "PAYMENT_AUTHORIZATIONCODE")
        const_set(:CHECKNUMBER, "PAYMENT_CHECKNUMBER")
        const_set(:CHECKTYPE, "PAYMENT_CHECKTYPE")
        const_set(:DRIVERSLICENSE, "PAYMENT_DRIVERSLICENSE")
        const_set(:MAGNETICINKCHECKREADER, "PAYMENT_MAGNETICINKCHECKREADER")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PaymentData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:MIN, :MAX, :ADDNEW, :VIEW, :SELECT, :CHANGE, :PAYMENT, :METHOD, :ID, :NUMBER, :NAME, :TYPE, :EXPIRATION, :TENDERTYPE, :TRANSACTIONTYPE, :ABA, :ACCOUNT, :ACCOUNTTYPE, :AUTHORIZATIONCODE, :CHECKNUMBER, :CHECKTYPE, :DRIVERSLICENSE, :MAGNETICINKCHECKREADER].include?(name)
        end
        super
    end
end

begin
    PaymentData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

