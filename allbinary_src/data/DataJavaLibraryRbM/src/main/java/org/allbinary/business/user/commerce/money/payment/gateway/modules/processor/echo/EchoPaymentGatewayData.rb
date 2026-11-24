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
# package org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.echo


module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; module Modules; module Processor; module Echo

class EchoPaymentGatewayData
    

    def initialize()
    end

    def self.cnp_security()
        EchoPaymentGatewayData.java_static_fields unless @java_static_fields_started
        return defined?(@@cnp_security) ? @@cnp_security : nil
    end

    def self.cnp_security=(value)
        EchoPaymentGatewayData.java_static_fields unless @java_static_fields_started
        @@cnp_security = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:TRANSACTION_TYPE, "transaction_type")
        const_set(:MERCHANT_ECHO_ID, "merchant_echo_id")
        const_set(:ORDER_TYPE, "order_type")
        const_set(:MERCHANT_PIN, "merchant_pin")
        const_set(:ISP_ECHO_ID, "isp_echo_id")
        const_set(:ISP_PIN, "isp_pin")
        const_set(:BILLING_IP_ADDRESS, "billing_ip_address")
        const_set(:MERCHANT_EMAIL, "merchant_email")
        const_set(:AUTHORIZATION, "authorization")
        const_set(:BILLING_PREFIX, "billing_prefix")
        const_set(:BILLING_NAME, "billing_name")
        const_set(:BILLING_FIRST_NAME, "billing_first_name")
        const_set(:BILLING_LAST_NAME, "billing_last_name")
        const_set(:BILLING_COMPANY_NAME, "billing_company_name")
        const_set(:BILLING_ADDRESS1, "billing_address1")
        const_set(:BILLING_ADDRESS2, "billing_address2")
        const_set(:BILLING_CITY, "billing_city")
        const_set(:BILLING_STATE, "billing_state")
        const_set(:BILLING_ZIP, "billing_zip")
        const_set(:BILLING_COUNTRY, "billing_country")
        const_set(:BILLING_PHONE, "billing_phone")
        const_set(:BILLING_FAX, "billing_fax")
        const_set(:BILLING_EMAIL, "billing_email")
        const_set(:CC_NUMBER, "cc_number")
        const_set(:CCEXP_MONTH, "ccexp_month")
        const_set(:CCEXP_YEAR, "ccexp_year")
        const_set(:CNP_RECURRING, "cnp_recurring")
        @@cnp_security = "cnp_security"
        const_set(:COUNTER, "counter")
        const_set(:DEBUG, "debug")
        const_set(:EC_ACCOUNT, "ec_account")
        const_set(:EC_ACCOUNT_TYPE, "ec_account_type")
        const_set(:EC_ADDRESS1, "ec_address1")
        const_set(:EC_ADDRESS2, "ec_address2")
        const_set(:EC_BANK_NAME, "ec_bank_name")
        const_set(:EC_CITY, "ec_city")
        const_set(:EC_EMAIL, "ec_email")
        const_set(:EC_FIRST_NAME, "ec_first_name")
        const_set(:EC_ID_COUNTRY, "ec_id_country")
        const_set(:EC_ID_EXP_MM, "ec_id_exp_mm")
        const_set(:EC_ID_EXP_DD, "ec_id_exp_dd")
        const_set(:EC_ID_EXP_YY, "ec_id_exp_yy")
        const_set(:EC_ID_NUMBER, "ec_id_number")
        const_set(:EC_ID_STATE, "ec_id_state")
        const_set(:EC_ID_TYPE, "ec_id_type")
        const_set(:EC_LAST_NAME, "ec_last_name")
        const_set(:EC_BUSINESS_NAME, "ec_BUSINESS_NAME")
        const_set(:EC_LICENSE_NUMBER, "ec_LICENSE_NUMBER")
        const_set(:EC_LICENSE_STATE, "ec_LICENSE_STATE")
        const_set(:EC_MERCHANT_REF, "ec_MERCHANT_REF")
        const_set(:EC_NBDS_CODE, "ec_NBDS_CODE")
        const_set(:EC_OTHER_NAME, "ec_other_name")
        const_set(:EC_PAYEE, "ec_payee")
        const_set(:EC_PAYMENT_TYPE, "ec_payment_type")
        const_set(:EC_RT, "ec_rt")
        const_set(:EC_SERIAL_NUMBER, "ec_serial_number")
        const_set(:EC_STATE, "ec_state")
        const_set(:EC_TRANSACTION_DT, "ec_transaction_dt")
        const_set(:EC_ZIP, "ec_zip")
        const_set(:GRAND_TOTAL, "grand_total")
        const_set(:MERCHANT_TRACE_NBR, "merchant_trace_nbr")
        const_set(:ORDER_NUMBER, "order_number")
        const_set(:ORIGINAL_AMOUNT, "original_amount")
        const_set(:ORIGINAL_TRANDATE_MM, "original_trandate_mm")
        const_set(:ORIGINAL_TRANDATE_DD, "original_trandate_dd")
        const_set(:ORIGINAL_TRANDATE_YYYY, "original_trandate_yyyy")
        const_set(:ORIGINAL_REFERENCE, "original_reference")
        const_set(:PRODUCT_DESCRIPTION, "product_description")
        const_set(:PURCHASE_ORDER_NUMBER, "purchase_order_number")
        const_set(:SALES_TAX, "sales_tax")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "EchoPaymentGatewayData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:TRANSACTION_TYPE, :MERCHANT_ECHO_ID, :ORDER_TYPE, :MERCHANT_PIN, :ISP_ECHO_ID, :ISP_PIN, :BILLING_IP_ADDRESS, :MERCHANT_EMAIL, :AUTHORIZATION, :BILLING_PREFIX, :BILLING_NAME, :BILLING_FIRST_NAME, :BILLING_LAST_NAME, :BILLING_COMPANY_NAME, :BILLING_ADDRESS1, :BILLING_ADDRESS2, :BILLING_CITY, :BILLING_STATE, :BILLING_ZIP, :BILLING_COUNTRY, :BILLING_PHONE, :BILLING_FAX, :BILLING_EMAIL, :CC_NUMBER, :CCEXP_MONTH, :CCEXP_YEAR, :CNP_RECURRING, :COUNTER, :DEBUG, :EC_ACCOUNT, :EC_ACCOUNT_TYPE, :EC_ADDRESS1, :EC_ADDRESS2, :EC_BANK_NAME, :EC_CITY, :EC_EMAIL, :EC_FIRST_NAME, :EC_ID_COUNTRY, :EC_ID_EXP_MM, :EC_ID_EXP_DD, :EC_ID_EXP_YY, :EC_ID_NUMBER, :EC_ID_STATE, :EC_ID_TYPE, :EC_LAST_NAME, :EC_BUSINESS_NAME, :EC_LICENSE_NUMBER, :EC_LICENSE_STATE, :EC_MERCHANT_REF, :EC_NBDS_CODE, :EC_OTHER_NAME, :EC_PAYEE, :EC_PAYMENT_TYPE, :EC_RT, :EC_SERIAL_NUMBER, :EC_STATE, :EC_TRANSACTION_DT, :EC_ZIP, :GRAND_TOTAL, :MERCHANT_TRACE_NBR, :ORDER_NUMBER, :ORIGINAL_AMOUNT, :ORIGINAL_TRANDATE_MM, :ORIGINAL_TRANDATE_DD, :ORIGINAL_TRANDATE_YYYY, :ORIGINAL_REFERENCE, :PRODUCT_DESCRIPTION, :PURCHASE_ORDER_NUMBER, :SALES_TAX].include?(name)
        end
        super
    end
end

begin
    EchoPaymentGatewayData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end; end; end; end

