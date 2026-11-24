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
# package org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.sim


module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; module Modules; module Processor; module Authorizenet; module Sim

class AuthorizeNetSimData
    

    def initialize()
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:X_FP_HASH, "x_fp_hash")
        const_set(:X_FP_SEQUENCE, "x_fp_sequence")
        const_set(:X_FP_TIMESTAMP, "x_fp_timestamp")
        const_set(:X_SHOW_FORM, "x_show_form")
        const_set(:X_HEADER_HTML_PAYMENT_FORM, "x_header_html_payment_form")
        const_set(:X_FOOTER_HTML_PAYMENT_FORM, "x_footer_html_payment_form")
        const_set(:X_HEADER_HTML_RECEIPT, "x_header_html_receipt")
        const_set(:X_FOOTER_HTML_RECEIPT, "x_footer_html_receipt")
        const_set(:X_RECEIPT_LINK_TEXT, "x_receipt_link_text")
        const_set(:X_RECEIPT_LINK_URL, "x_receipt_link_url")
        const_set(:X_LOGO_URL, "x_logo_url")
        const_set(:X_BACKGROUND_URL, "x_background_url")
        const_set(:X_COLOR_BACKGROUND, "x_color_background")
        const_set(:X_COLOR_LINK, "x_color_link")
        const_set(:X_COLOR_TEXT, "x_color_text")
        const_set(:X_RELAY_URL, "x_relay_url")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AuthorizeNetSimData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:X_FP_HASH, :X_FP_SEQUENCE, :X_FP_TIMESTAMP, :X_SHOW_FORM, :X_HEADER_HTML_PAYMENT_FORM, :X_FOOTER_HTML_PAYMENT_FORM, :X_HEADER_HTML_RECEIPT, :X_FOOTER_HTML_RECEIPT, :X_RECEIPT_LINK_TEXT, :X_RECEIPT_LINK_URL, :X_LOGO_URL, :X_BACKGROUND_URL, :X_COLOR_BACKGROUND, :X_COLOR_LINK, :X_COLOR_TEXT, :X_RELAY_URL].include?(name)
        end
        super
    end
end

begin
    AuthorizeNetSimData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end; end; end; end; end

