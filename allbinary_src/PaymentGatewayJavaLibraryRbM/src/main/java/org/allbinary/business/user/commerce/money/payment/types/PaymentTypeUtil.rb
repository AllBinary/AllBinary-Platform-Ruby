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
        PaymentTypeUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        PaymentTypeUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = PaymentTypeUtil.new()
            static_init
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PaymentTypeUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :EntryData, "org/allbinary/business/entry/EntryData"
autoload :PaymentGatewaysData, "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewaysData"
autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper"
autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper"
autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper"
autoload :FREEBLISKET_PATH_GLOBALS, "org/allbinary/globals/FREEBLISKET_PATH_GLOBALS"
autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CryptFileReader, "org/allbinary/logic/control/crypt/file/CryptFileReader"
autoload :AbPath, "org/allbinary/logic/io/path/AbPath"
autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil"
autoload :TransformInfoObjectConfigData, "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigData"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"
autoload :NodeList, "org/w3c/dom/NodeList"
autoload :PaymentType, "org/allbinary/business/user/commerce/money/payment/types/PaymentType"

begin
    PaymentTypeUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

