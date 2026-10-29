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
# package org.allbinary.logic.visual.transform.info


class BasicViewData
    attr_accessor :GENERICDIR, :USERDIR, :ADDRESSDIR, :BILLINGADDRESSDIR, :SHIPPINGADDRESSDIR, :COMMERCEDIR, :INVENTORYDIR, :BASKETDIR, :ITEMDIR, :MONEYDIR, :SHIPPINGDIR, :ORDERDIR, :ORDEREMAILDIR, :ORDERHISTORYDIR, :ORDERREVIEWDIR, :PAYMENTDIR, :GENERATIONDIR, :PRODUCTSDIR, :IGNOREXMLXSL, :REVIEWORDERVIEWXSL, :ORDERVIEWXSL, :INVENTORYXSL, :BASKETXSL, :CHECKOUTBASKETXSL, :MINIBASKETXSL, :BILLINGADDRESSCHANGEFORMXSL, :BILLINGADDRESSINPUTFORMXSL, :BILLINGADDRESSVIEWXSL, :SHIPPINGADDRESSCHANGEFORMXSL, :SHIPPINGADDRESSINPUTFORMXSL, :SHIPPINGADDRESSVIEWXSL, :NEWTAXADDRESSXSL, :EDITTAXADDRESSXSL, :SHIPPINGMETHODSXSL, :ORDERCUSTOMEREMAILVIEWXSL, :ORDERMANAGEREMAILVIEWXSL, :EDITCUSTOMERXSL, :ORDERHISTORYXSL, :PAYMENTVIEWXSL, :SUMMARYXSL, :PAYMENTGATEWAYOPTIONSXSL, :MAKEPAYMENTVIEWXSL

    def initialize_fields
        @GENERICDIR = "generic/"
        @USERDIR = @GENERICDIR + "user/"
        @ADDRESSDIR = @USERDIR + "address/"
        @BILLINGADDRESSDIR = @ADDRESSDIR + "billing/"
        @SHIPPINGADDRESSDIR = @ADDRESSDIR + "shipping/"
        @COMMERCEDIR = @USERDIR + "commerce/"
        @INVENTORYDIR = @COMMERCEDIR + "inventory/"
        @BASKETDIR = @INVENTORYDIR + "basket/"
        @ITEMDIR = @INVENTORYDIR + "item/"
        @MONEYDIR = @COMMERCEDIR + "money/"
        @SHIPPINGDIR = @COMMERCEDIR + "shipping/"
        @ORDERDIR = @INVENTORYDIR + "order/"
        @ORDEREMAILDIR = @ORDERDIR + "email/"
        @ORDERHISTORYDIR = @ORDERDIR + "history/"
        @ORDERREVIEWDIR = @ORDERDIR + "review/"
        @PAYMENTDIR = @MONEYDIR + "payment/"
        @GENERATIONDIR = @GENERICDIR + "generation/"
        @PRODUCTSDIR = @GENERICDIR + "products/"
        @IGNOREXMLXSL = @GENERICDIR + "ignoreXmlView.xsl"
        @REVIEWORDERVIEWXSL = @ORDERREVIEWDIR + "reviewOrderView.xsl"
        @ORDERVIEWXSL = @REVIEWORDERVIEWXSL
        @INVENTORYXSL = @INVENTORYDIR + "inventory.xsl"
        @BASKETXSL = @BASKETDIR + "basket.xsl"
        @CHECKOUTBASKETXSL = @BASKETDIR + "staticBasket.xsl"
        @MINIBASKETXSL = @BASKETDIR + "miniBasket.xsl"
        @BILLINGADDRESSCHANGEFORMXSL = @BILLINGADDRESSDIR + "billingAddressChangeForm.xsl"
        @BILLINGADDRESSINPUTFORMXSL = @BILLINGADDRESSDIR + "billingAddressInputForm.xsl"
        @BILLINGADDRESSVIEWXSL = @BILLINGADDRESSDIR + "billingAddressView.xsl"
        @SHIPPINGADDRESSCHANGEFORMXSL = @SHIPPINGADDRESSDIR + "shippingAddressChangeForm.xsl"
        @SHIPPINGADDRESSINPUTFORMXSL = @SHIPPINGADDRESSDIR + "shippingAddressInputForm.xsl"
        @SHIPPINGADDRESSVIEWXSL = @SHIPPINGADDRESSDIR + "shippingAddressView.xsl"
        @NEWTAXADDRESSXSL = @SHIPPINGADDRESSDIR + "newTaxAddressView.xsl"
        @EDITTAXADDRESSXSL = @SHIPPINGADDRESSDIR + "editTaxAddressView.xsl"
        @SHIPPINGMETHODSXSL = @SHIPPINGDIR + "shippingMethods.xsl"
        @ORDERCUSTOMEREMAILVIEWXSL = @ORDEREMAILDIR + "orderCustomerEmailView.xsl"
        @ORDERMANAGEREMAILVIEWXSL = @ORDEREMAILDIR + "orderManagerEmailView.xsl"
        @EDITCUSTOMERXSL = @USERDIR + "editCustomerInputForm.xsl"
        @ORDERHISTORYXSL = @ORDERHISTORYDIR + "orderHistory.xsl"
        @PAYMENTVIEWXSL = @PAYMENTDIR + "paymentView.xsl"
        @SUMMARYXSL = @ITEMDIR + "summary/summary.xsl"
        @PAYMENTGATEWAYOPTIONSXSL = @PAYMENTDIR + "paymentGatewayOptions.xsl"
        @MAKEPAYMENTVIEWXSL = @PAYMENTDIR + "invoice/" + "makePayment.xsl"
    end
    

    def self.getInstance()
        return BasicViewData.instance
    end
    

    def initialize()
        initialize_fields
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class BasicViewData
    @@instance = BasicViewData.new()
end

