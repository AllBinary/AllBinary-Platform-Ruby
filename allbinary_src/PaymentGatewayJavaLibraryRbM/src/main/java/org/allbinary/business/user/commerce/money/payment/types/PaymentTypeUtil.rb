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

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Types

class PaymentTypeUtil
    attr_accessor :logUtil, :commonStrings, :PAYMENTGATEWAYFILEPATHSTRING, :SHIPPINGMETHODSFILENAME, :defaultName, :paymentTypeVector

    def jfields_org_allbinary_business_user_commerce_money_payment_types_PaymentTypeUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @PAYMENTGATEWAYFILEPATHSTRING = nil unless instance_variable_defined?(:@PAYMENTGATEWAYFILEPATHSTRING)
        @SHIPPINGMETHODSFILENAME = "paymentGatewayTypes.xml"
        @defaultName = nil
        @paymentTypeVector = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def self.static_init
    end
    

    def self.getInstance()
        return PaymentTypeUtil.instance
    end
    

    def initialize()
        jfields_org_allbinary_business_user_commerce_money_payment_types_PaymentTypeUtil
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        sep = ::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR
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
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PAYMENT)
            @logUtil.putF("initDefault Payment: " + @defaultName, self, "initDefault")
        end
        if ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(@defaultName)
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append(::Org::Allbinary::Globals::URLGLOBALS.getMainPath())
            stringBuffer.append(::Org::Allbinary::Globals::FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH)
            stringBuffer.append(storeName)
            stringBuffer.append(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR)
            stringBuffer.append(@PAYMENTGATEWAYFILEPATHSTRING)
            abPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(stringBuffer.to_s, @SHIPPINGMETHODSFILENAME)
            data = ::Org::Allbinary::Logic::ControlPackage::Crypt::FilePackage::CryptFileReader.new(::Org::Allbinary::Logic::Visual::Transform::Info::ObjectConfig::TransformInfoObjectConfigData.getInstance().UNCRYPTED_EXTENSION, ::Org::Allbinary::Logic::Visual::Transform::Info::ObjectConfig::TransformInfoObjectConfigData.getInstance().ENCRYPTED_EXTENSION).get(abPath)
            document = ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create(data)
            nodeList = document.getElementsByTagName(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewaysData::NAME)
            (0...nodeList.getLength()).each do |index|
                node = nodeList.item(index)
                defaultPaymentGatewayNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(::Org::Allbinary::Business::Entry::EntryData.getInstance().DEFAULT, node.getChildNodes())
                defaultPaymentGatewayNodeValue = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(defaultPaymentGatewayNode)
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PAYMENT)
                    @logUtil.putF("DefaultPaymentGatewayNodeValue: " + defaultPaymentGatewayNodeValue, self, "initDefault")
                end
                if !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(defaultPaymentGatewayNodeValue)
                    @defaultName = defaultPaymentGatewayNodeValue
                end
            end
        end
    end
    

    # throws Exception
    def getDefault(storeName)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PAYMENT)
            @logUtil.putF(@commonStrings.START, self, "getDefault")
        end
        self.initDefault(storeName)
        if !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(@defaultName)
            return self.get(@defaultName)
        end
        raise StandardError.new("No Default: " + @defaultName)
    end
    

    def isContain(paymentType)
        return @paymentTypeVector.contains(paymentType)
    end
    

    def difference(a_PaymentTypeVector)
        diff = ::Org::Allbinary::Util::BasicArrayListD.new()
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

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Entry; autoload :EntryData, "org/allbinary/business/entry/EntryData" unless const_defined?(:EntryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; autoload :PaymentGatewaysData, "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewaysData" unless const_defined?(:PaymentGatewaysData, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper" unless const_defined?(:DomNodeHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper" unless const_defined?(:DomDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :FREEBLISKET_PATH_GLOBALS, "org/allbinary/globals/FREEBLISKET_PATH_GLOBALS" unless const_defined?(:FREEBLISKET_PATH_GLOBALS, false); end; end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Crypt; module FilePackage; autoload :CryptFileReader, "org/allbinary/logic/control/crypt/file/CryptFileReader" unless const_defined?(:CryptFileReader, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module ObjectConfig; autoload :TransformInfoObjectConfigData, "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigData" unless const_defined?(:TransformInfoObjectConfigData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :PaymentType, "org/allbinary/business/user/commerce/money/payment/types/PaymentType" unless const_defined?(:PaymentType, false)

begin
    PaymentTypeUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end

