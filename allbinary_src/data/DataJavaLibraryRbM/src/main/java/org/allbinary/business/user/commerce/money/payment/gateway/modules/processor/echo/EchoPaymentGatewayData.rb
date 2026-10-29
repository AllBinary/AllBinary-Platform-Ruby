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


class EchoPaymentGatewayData
    

    def initialize()
    end

    def self.cnp_security()
        return defined?(@@cnp_security) ? @@cnp_security : nil
    end

    def self.cnp_security=(value)
        @@cnp_security = value
    end
end

class EchoPaymentGatewayData
    TRANSACTION_TYPE = "transaction_type"
    MERCHANT_ECHO_ID = "merchant_echo_id"
    ORDER_TYPE = "order_type"
    MERCHANT_PIN = "merchant_pin"
    ISP_ECHO_ID = "isp_echo_id"
    ISP_PIN = "isp_pin"
    BILLING_IP_ADDRESS = "billing_ip_address"
    MERCHANT_EMAIL = "merchant_email"
    AUTHORIZATION = "authorization"
    BILLING_PREFIX = "billing_prefix"
    BILLING_NAME = "billing_name"
    BILLING_FIRST_NAME = "billing_first_name"
    BILLING_LAST_NAME = "billing_last_name"
    BILLING_COMPANY_NAME = "billing_company_name"
    BILLING_ADDRESS1 = "billing_address1"
    BILLING_ADDRESS2 = "billing_address2"
    BILLING_CITY = "billing_city"
    BILLING_STATE = "billing_state"
    BILLING_ZIP = "billing_zip"
    BILLING_COUNTRY = "billing_country"
    BILLING_PHONE = "billing_phone"
    BILLING_FAX = "billing_fax"
    BILLING_EMAIL = "billing_email"
    CC_NUMBER = "cc_number"
    CCEXP_MONTH = "ccexp_month"
    CCEXP_YEAR = "ccexp_year"
    CNP_RECURRING = "cnp_recurring"
    @@cnp_security = "cnp_security"
    COUNTER = "counter"
    DEBUG = "debug"
    EC_ACCOUNT = "ec_account"
    EC_ACCOUNT_TYPE = "ec_account_type"
    EC_ADDRESS1 = "ec_address1"
    EC_ADDRESS2 = "ec_address2"
    EC_BANK_NAME = "ec_bank_name"
    EC_CITY = "ec_city"
    EC_EMAIL = "ec_email"
    EC_FIRST_NAME = "ec_first_name"
    EC_ID_COUNTRY = "ec_id_country"
    EC_ID_EXP_MM = "ec_id_exp_mm"
    EC_ID_EXP_DD = "ec_id_exp_dd"
    EC_ID_EXP_YY = "ec_id_exp_yy"
    EC_ID_NUMBER = "ec_id_number"
    EC_ID_STATE = "ec_id_state"
    EC_ID_TYPE = "ec_id_type"
    EC_LAST_NAME = "ec_last_name"
    EC_BUSINESS_NAME = "ec_BUSINESS_NAME"
    EC_LICENSE_NUMBER = "ec_LICENSE_NUMBER"
    EC_LICENSE_STATE = "ec_LICENSE_STATE"
    EC_MERCHANT_REF = "ec_MERCHANT_REF"
    EC_NBDS_CODE = "ec_NBDS_CODE"
    EC_OTHER_NAME = "ec_other_name"
    EC_PAYEE = "ec_payee"
    EC_PAYMENT_TYPE = "ec_payment_type"
    EC_RT = "ec_rt"
    EC_SERIAL_NUMBER = "ec_serial_number"
    EC_STATE = "ec_state"
    EC_TRANSACTION_DT = "ec_transaction_dt"
    EC_ZIP = "ec_zip"
    GRAND_TOTAL = "grand_total"
    MERCHANT_TRACE_NBR = "merchant_trace_nbr"
    ORDER_NUMBER = "order_number"
    ORIGINAL_AMOUNT = "original_amount"
    ORIGINAL_TRANDATE_MM = "original_trandate_mm"
    ORIGINAL_TRANDATE_DD = "original_trandate_dd"
    ORIGINAL_TRANDATE_YYYY = "original_trandate_yyyy"
    ORIGINAL_REFERENCE = "original_reference"
    PRODUCT_DESCRIPTION = "product_description"
    PURCHASE_ORDER_NUMBER = "purchase_order_number"
    SALES_TAX = "sales_tax"
end

