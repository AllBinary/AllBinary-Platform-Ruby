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
# package org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet


module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; module Modules; module Processor; module Authorizenet

class AuthorizeNetData
    

    def initialize()
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:X_LOGIN, "x_login")
        const_set(:X_TRAN_KEY, "x_tran_key")
        const_set(:X_VERSION, "x_version")
        const_set(:X_TEST_REQUEST, "x_test_request")
        const_set(:X_RELAY_RESPONSE, "x_relay_response")
        const_set(:X_DUPLICATE_WINDOW, "x_duplicate_window")
        const_set(:X_FIRST_NAME, "x_first_name")
        const_set(:X_LAST_NAME, "x_last_name")
        const_set(:X_COMPANY, "x_company")
        const_set(:X_ADDRESS, "x_address")
        const_set(:X_CITY, "x_city")
        const_set(:X_STATE, "x_state")
        const_set(:X_ZIP, "x_zip")
        const_set(:X_COUNTRY, "x_country")
        const_set(:X_PHONE, "x_phone")
        const_set(:X_FAX, "x_fax")
        const_set(:X_CUST_ID, "x_cust_id")
        const_set(:X_CUSTOMER_IP, "x_customer_ip")
        const_set(:X_CUSTOMER_TAX_ID, "x_customer_tax_id")
        const_set(:X_EMAIL_CUSTOMER, "x_email_customer")
        const_set(:X_EMAIL, "x_email")
        const_set(:X_EMAIL_MERCHANT, "x_email_merchant")
        const_set(:X_INVOICE_NUM, "x_invoice_num")
        const_set(:X_DESCRIPTION, "x_description")
        const_set(:X_SHIP_TO_FIRST_NAME, "x_ship_to_first_name")
        const_set(:X_SHIP_TO_LAST_NAME, "x_ship_to_last_name")
        const_set(:X_SHIP_TO_COMPANY, "x_ship_to_company")
        const_set(:X_SHIP_TO_ADDRESS, "x_ship_to_address")
        const_set(:X_SHIP_TO_CITY, "x_ship_to_city")
        const_set(:X_SHIP_TO_STATE, "x_ship_to_state")
        const_set(:X_SHIP_TO_ZIP, "x_ship_to_zip")
        const_set(:X_SHIP_TO_COUNTRY, "x_ship_to_country")
        const_set(:X_AMOUNT, "x_amount")
        const_set(:X_CURRENCY_CODE, "x_currency_code")
        const_set(:X_METHOD, "x_method")
        const_set(:X_TYPE, "x_type")
        const_set(:X_RECURRING_BILLING, "x_recurring_billing")
        const_set(:X_BANK_ABA_CODE, "x_bank_aba_code")
        const_set(:X_BANK_ACCT_NUM, "x_bank_acct_num")
        const_set(:X_BANK_ACCT_TYPE, "x_bank_acct_type")
        const_set(:X_BANK_NAME, "x_bank_name")
        const_set(:X_BANK_ACCT_NAME, "x_bank_acct_name")
        const_set(:X_ECHECK_TYPE, "x_echeck_type")
        const_set(:X_CARD_NUM, "x_card_num")
        const_set(:X_EXP_DATE, "x_exp_date")
        const_set(:X_CARD_CODE, "x_card_code")
        const_set(:X_TRANS_ID, "x_trans_id")
        const_set(:X_AUTH_CODE, "x_auth_code")
        const_set(:X_PO_NUM, "x_po_num")
        const_set(:X_TAX, "x_tax")
        const_set(:X_TAX_EXEMPT, "x_tax_exempt")
        const_set(:X_FREIGHT, "x_freight")
        const_set(:X_DUTY, "x_duty")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AuthorizeNetData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:X_LOGIN, :X_TRAN_KEY, :X_VERSION, :X_TEST_REQUEST, :X_RELAY_RESPONSE, :X_DUPLICATE_WINDOW, :X_FIRST_NAME, :X_LAST_NAME, :X_COMPANY, :X_ADDRESS, :X_CITY, :X_STATE, :X_ZIP, :X_COUNTRY, :X_PHONE, :X_FAX, :X_CUST_ID, :X_CUSTOMER_IP, :X_CUSTOMER_TAX_ID, :X_EMAIL_CUSTOMER, :X_EMAIL, :X_EMAIL_MERCHANT, :X_INVOICE_NUM, :X_DESCRIPTION, :X_SHIP_TO_FIRST_NAME, :X_SHIP_TO_LAST_NAME, :X_SHIP_TO_COMPANY, :X_SHIP_TO_ADDRESS, :X_SHIP_TO_CITY, :X_SHIP_TO_STATE, :X_SHIP_TO_ZIP, :X_SHIP_TO_COUNTRY, :X_AMOUNT, :X_CURRENCY_CODE, :X_METHOD, :X_TYPE, :X_RECURRING_BILLING, :X_BANK_ABA_CODE, :X_BANK_ACCT_NUM, :X_BANK_ACCT_TYPE, :X_BANK_NAME, :X_BANK_ACCT_NAME, :X_ECHECK_TYPE, :X_CARD_NUM, :X_EXP_DATE, :X_CARD_CODE, :X_TRANS_ID, :X_AUTH_CODE, :X_PO_NUM, :X_TAX, :X_TAX_EXEMPT, :X_FREIGHT, :X_DUTY].include?(name)
        end
        super
    end
end

begin
    AuthorizeNetData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end; end; end; end

