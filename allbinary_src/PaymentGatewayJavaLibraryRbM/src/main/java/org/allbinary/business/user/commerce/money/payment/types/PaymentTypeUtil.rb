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
# package org.allbinary.business.user.commerce.money.payment.types


class PaymentTypeUtil
    attr_accessor :logUtil, :commonStrings, :PAYMENTGATEWAYFILEPATHSTRING, :SHIPPINGMETHODSFILENAME, :defaultName, :paymentTypeVector

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @PAYMENTGATEWAYFILEPATHSTRING = nil
        @SHIPPINGMETHODSFILENAME = "paymentGatewayTypes.xml"
        @defaultName = nil
        @paymentTypeVector = BasicArrayListD.new()
    end
    

    def self.static_init
    end
    

    def self.getInstance()
        return PaymentTypeUtil.instance
    end
    

    def initialize()
        initialize_fields
        stringBuffer = StringMaker.new()
        sep = AbPathData.getInstance().SEPARATOR
        stringBuffer.append(sep)
        stringBuffer.append("generic")
        stringBuffer.append(sep)
        stringBuffer.append("user")
        stringBuffer.append(sep)
        stringBuffer.append("commerce")
        stringBuffer.append(sep)
        stringBuffer.append("money")
        stringBuffer.append(sep)
        stringBuffer.append("payment")
        stringBuffer.append(sep)
        stringBuffer.append("gateway")
        stringBuffer.append(sep)
        @PAYMENTGATEWAYFILEPATHSTRING = stringBuffer.to_s
    end
    

    def add(paymentType)
        @paymentTypeVector.add(paymentType)
    end
    

    # throws Exception
    def get(paymentTypeString)
        size = @paymentTypeVector.size()
        (0...size).each do |i|
            paymentType = @paymentTypeVector.get(i)
            if paymentType.getBasicPaymentType().getName().compareTo(paymentTypeString) == 0
                return paymentType
            end
        end
        raise StandardError.new("Unknown PaymentType: " + paymentTypeString)
    end
    

    # throws Exception
    def initDefault(storeName)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().PAYMENT)
            @logUtil.putF("initDefault Payment: " + @defaultName, self, "initDefault")
        end
        if StringValidationUtil.getInstance().isEmpty(@defaultName)
            stringBuffer = StringMaker.new()
            stringBuffer.append(URLGLOBALS.getMainPath())
            stringBuffer.append(FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH)
            stringBuffer.append(storeName)
            stringBuffer.append(AbPathData.getInstance().SEPARATOR)
            stringBuffer.append(@PAYMENTGATEWAYFILEPATHSTRING)
            abPath = AbPath.new(stringBuffer.to_s, @SHIPPINGMETHODSFILENAME)
            data = CryptFileReader.new(TransformInfoObjectConfigData.getInstance().UNCRYPTED_EXTENSION, TransformInfoObjectConfigData.getInstance().ENCRYPTED_EXTENSION).get(abPath)
            document = DomDocumentHelper.create(data)
            nodeList = document.getElementsByTagName(PaymentGatewaysData::NAME)
            (0...nodeList.getLength()).each do |index|
                node = nodeList.item(index)
                defaultPaymentGatewayNode = DomSearchHelper.getNode(EntryData.getInstance().DEFAULT, node.getChildNodes())
                defaultPaymentGatewayNodeValue = DomNodeHelper.getTextNodeValue(defaultPaymentGatewayNode)
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().PAYMENT)
                    @logUtil.putF("DefaultPaymentGatewayNodeValue: " + defaultPaymentGatewayNodeValue, self, "initDefault")
                end
                if !StringValidationUtil.getInstance().isEmpty(defaultPaymentGatewayNodeValue)
                    @defaultName = defaultPaymentGatewayNodeValue
                end
            end
        end
    end
    

    # throws Exception
    def getDefault(storeName)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().PAYMENT)
            @logUtil.putF(@commonStrings.START, self, "getDefault")
        end
        self.initDefault(storeName)
        if !StringValidationUtil.getInstance().isEmpty(@defaultName)
            return self.get(@defaultName)
        end
        raise StandardError.new("No Default: " + @defaultName)
    end
    

    def isContain(paymentType)
        return @paymentTypeVector.contains(paymentType)
    end
    

    def difference(a_PaymentTypeVector)
        diff = BasicArrayListD.new()
        size = @paymentTypeVector.size()
        (0...size).each do |i|
            paymentType = @paymentTypeVector.get(i)
            if !a_PaymentTypeVector.contains(paymentType)
                diff.add(paymentType)
            end
        end
        return diff
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/entry/EntryData"
require "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewaysData"
require "org/allbinary/data/tree/dom/DomNodeHelper"
require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/allbinary/data/tree/dom/document/DomDocumentHelper"
require "org/allbinary/globals/FREEBLISKET_PATH_GLOBALS"
require "org/allbinary/globals/URLGLOBALS"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/control/crypt/file/CryptFileReader"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/io/path/AbPathData"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigData"
require "org/allbinary/string/CommonStrings"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/w3c/dom/NodeList"
require "org/allbinary/business/user/commerce/money/payment/types/PaymentType"

class PaymentTypeUtil
    @@instance = PaymentTypeUtil.new()
end

PaymentTypeUtil.static_init

