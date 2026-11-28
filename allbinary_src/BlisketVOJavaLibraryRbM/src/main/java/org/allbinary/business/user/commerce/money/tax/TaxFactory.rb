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
# package org.allbinary.business.user.commerce.money.tax

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Tax

class TaxFactory
    attr_accessor :logUtil, :commonStrings, :TAXATIONFILENAME

    def jfields_org_allbinary_business_user_commerce_money_tax_TaxFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @TAXATIONFILENAME = "taxationMethod.xml"
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_business_user_commerce_money_tax_TaxFactory
    end
    

    # throws Exception
    def getInstance(abeClientInformation, storeFrontInterface)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(::Org::Allbinary::Globals::URLGLOBALS.getMainPath())
        stringBuffer.append(::Org::Allbinary::Globals::FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH)
        stringBuffer.append(storeFrontInterface.getName())
        stringBuffer.append(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR)
        stringBuffer.append("generic")
        stringBuffer.append(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR)
        stringBuffer.append("taxes")
        stringBuffer.append(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR)
        abPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(stringBuffer.to_s, @TAXATIONFILENAME)
        transformInfoObjectConfigData = ::Org::Allbinary::Logic::Visual::Transform::Info::ObjectConfig::TransformInfoObjectConfigData.getInstance()
        data = ::Org::Allbinary::Logic::ControlPackage::Crypt::FilePackage::CryptFileReader.new(transformInfoObjectConfigData.UNCRYPTED_EXTENSION, transformInfoObjectConfigData.ENCRYPTED_EXTENSION).get(abPath)
        document = ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create(data)
        taxNameNodeList = document.getElementsByTagName(::Org::Allbinary::Business::User::Commerce::Money::Tax::Components::TaxData::NAME)
        (0...taxNameNodeList.getLength()).each do |index|
            node = taxNameNodeList.item(index)
            nodeList = node.getChildNodes()
            if nodeList != nil
                classNameNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(::Org::Allbinary::Business::DynamicObjectData::NAME, nodeList)
                if classNameNode != nil
                    className = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(classNameNode)
                    return ::Org::Allbinary::Logic::System::Loader::AbeFactory.getInstance().getInstance(abeClientInformation, className)
                else
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAX)
                        @logUtil.putF("Class Node Null", self, @commonStrings.GET_INSTANCE)
                    end
                end
            else
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAX)
                    @logUtil.putF("Tax Name Node Node Children", self, @commonStrings.GET_INSTANCE)
                end
            end
        end
        return ::Org::Allbinary::Business::User::Commerce::Money::Tax::Modules::SimpleStateTaxModule.new()
    end

    def self.instance()
        TaxFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        TaxFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = TaxFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TaxFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Business; autoload :DynamicObjectData, "org/allbinary/business/DynamicObjectData" unless const_defined?(:DynamicObjectData, false); end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Tax; module Components; autoload :TaxData, "org/allbinary/business/user/commerce/money/tax/components/TaxData" unless const_defined?(:TaxData, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Tax; module Modules; autoload :SimpleStateTaxModule, "org/allbinary/business/user/commerce/money/tax/modules/SimpleStateTaxModule" unless const_defined?(:SimpleStateTaxModule, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Tax; module Modules; autoload :TaxModuleInterface, "org/allbinary/business/user/commerce/money/tax/modules/TaxModuleInterface" unless const_defined?(:TaxModuleInterface, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper" unless const_defined?(:DomNodeHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper" unless const_defined?(:DomDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :FREEBLISKET_PATH_GLOBALS, "org/allbinary/globals/FREEBLISKET_PATH_GLOBALS" unless const_defined?(:FREEBLISKET_PATH_GLOBALS, false); end; end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Crypt; module FilePackage; autoload :CryptFileReader, "org/allbinary/logic/control/crypt/file/CryptFileReader" unless const_defined?(:CryptFileReader, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Loader; autoload :AbeFactory, "org/allbinary/logic/system/loader/AbeFactory" unless const_defined?(:AbeFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module ObjectConfig; autoload :TransformInfoObjectConfigData, "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigData" unless const_defined?(:TransformInfoObjectConfigData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

begin
    TaxFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

