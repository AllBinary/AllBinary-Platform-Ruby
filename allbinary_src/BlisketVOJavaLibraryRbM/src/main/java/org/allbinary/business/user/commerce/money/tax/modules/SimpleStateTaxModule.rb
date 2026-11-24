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
# package org.allbinary.business.user.commerce.money.tax.modules

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/business/user/commerce/money/tax/modules/TaxModuleInterface"

module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Tax; module Modules

class SimpleStateTaxModule
    include TaxModuleInterface
    attr_accessor :logUtil, :commonStrings, :streetAddress, :storeFrontInterface, :ALL, :STATETAXPATH, :STATETAXFILE, :document

    def jfields_org_allbinary_business_user_commerce_money_tax_modules_SimpleStateTaxModule
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @streetAddress = nil unless instance_variable_defined?(:@streetAddress)
        @storeFrontInterface = nil unless instance_variable_defined?(:@storeFrontInterface)
        @ALL = ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().STAR
        @STATETAXPATH = "/generic/taxes/"
        @STATETAXFILE = "stateTaxation.xml"
        @document = nil unless instance_variable_defined?(:@document)
    end
    

    def initialize()
        jfields_org_allbinary_business_user_commerce_money_tax_modules_SimpleStateTaxModule
    end
    

    # throws Exception
    def getTaxRate(streetAddress, storeFrontInterface)
        @streetAddress = streetAddress
        @storeFrontInterface = storeFrontInterface
        fileAbPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new((::Org::Allbinary::Globals::URLGLOBALS.getMainPath() + ::Org::Allbinary::Globals::FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH).to_s + @storeFrontInterface.getName() + @STATETAXPATH, @STATETAXFILE)
        data = ::Org::Allbinary::Logic::ControlPackage::Crypt::FilePackage::CryptFileReader.new(::Org::Allbinary::Logic::Visual::Transform::Info::ObjectConfig::TransformInfoObjectConfigData.getInstance().UNCRYPTED_EXTENSION, ::Org::Allbinary::Logic::Visual::Transform::Info::ObjectConfig::TransformInfoObjectConfigData.getInstance().ENCRYPTED_EXTENSION).get(fileAbPath)
        @document = ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create(data)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAX)
            @logUtil.putF("Tax Doc: " + ::Org::Allbinary::DataPackage::Tree::Dom::Document::XmlDocumentHelper.toString(@document), self, "getTaxRate")
        end
        state = @streetAddress.getState()
        country = @streetAddress.getCountry()
        state = state.upcase
        nodeList = @document.getElementsByTagName(::Org::Allbinary::Business::User::Commerce::Money::Tax::Components::TaxData::NAME)
        (0...nodeList.getLength()).each do |index|
            node = nodeList.item(index)
            taxNodeChildren = node.getChildNodes()
            streetAddressNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(::Org::Allbinary::Business::User::Address::StreetAddressData::NAME, taxNodeChildren)
            taxableStreetAddress = ::Org::Allbinary::Business::User::Address::StreetAddress.new(streetAddressNode)
            stringValidationUtil = ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance()
            if !stringValidationUtil.isEmpty(country) && !stringValidationUtil.isEmpty(taxableStreetAddress.getCountry()) && (country <=> taxableStreetAddress.getCountry()) == 0
                if state != nil && taxableStreetAddress.getState() != nil && (state <=> taxableStreetAddress.getState()) == 0
                    rateNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(::Org::Allbinary::Business::User::Commerce::Money::Tax::Components::TaxData::RATE, taxNodeChildren)
                    taxRate = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(rateNode)
                    taxRateFloat = taxRate.to_f * 0.01
                    return taxRateFloat
                end
            end
        end
        return 0
    end
    java_overload :getTaxRate, 2
    

    def isValid(streetAddress, storeFrontInterface)
        begin
            @streetAddress = streetAddress
            @storeFrontInterface = storeFrontInterface
            fileAbPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new((::Org::Allbinary::Globals::URLGLOBALS.getMainPath() + ::Org::Allbinary::Globals::FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH).to_s + @storeFrontInterface.getName() + @STATETAXPATH, @STATETAXFILE)
            data = ::Org::Allbinary::Logic::ControlPackage::Crypt::FilePackage::CryptFileReader.new(::Org::Allbinary::Logic::Visual::Transform::Info::ObjectConfig::TransformInfoObjectConfigData.getInstance().UNCRYPTED_EXTENSION, ::Org::Allbinary::Logic::Visual::Transform::Info::ObjectConfig::TransformInfoObjectConfigData.getInstance().ENCRYPTED_EXTENSION).get(fileAbPath)
            @document = ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create(data)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAX)
                @logUtil.putF("Tax Doc: " + ::Org::Allbinary::DataPackage::Tree::Dom::Document::XmlDocumentHelper.toString(@document), self, @commonStrings.IS_VALID)
            end
            country = @streetAddress.getCountry()
            rootNode = @document.getElementsByTagName(::Org::Allbinary::Logic::Visual::Transform::Info::ObjectConfig::TransformInfoObjectConfigData.getInstance().NAME).item(0)
            nodeList = @document.getElementsByTagName(::Org::Allbinary::Business::User::Commerce::Money::Tax::Components::TaxData::NAME)
            (0...nodeList.getLength()).each do |index|
                node = nodeList.item(index)
                taxNodeChildren = node.getChildNodes()
                streetAddressNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(::Org::Allbinary::Business::User::Address::StreetAddressData::NAME, taxNodeChildren)
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAX)
                    stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                    stringBuffer.append("StreetAddress Node: ")
                    stringBuffer.append(streetAddressNode.getNodeName())
                    stringBuffer.append(" Value: ")
                    stringBuffer.append(streetAddressNode.getNodeValue())
                    stringBuffer.append(" Number Of Children: ")
                    stringBuffer.appendint(((streetAddressNode.getChildNodes().getLength()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
                    @logUtil.putF(stringBuffer.to_s, self, @commonStrings.IS_VALID)
                end
                taxableStreetAddress = ::Org::Allbinary::Business::User::Address::StreetAddress.new(streetAddressNode)
                stringValidationUtil = ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance()
                if !stringValidationUtil.isEmpty(country) && !stringValidationUtil.isEmpty(taxableStreetAddress.getCountry()) && taxableStreetAddress.getCountry().compareTo(@ALL) == 0
                    return true
                end
                if !stringValidationUtil.isEmpty(country) && !stringValidationUtil.isEmpty(taxableStreetAddress.getCountry()) && (country <=> taxableStreetAddress.getCountry()) == 0
                    state = @streetAddress.getState()
                    if state != nil
                        return true
                    end
                end
            end
            return false
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to validate", self, @commonStrings.IS_VALID, e)
            end
            return false
        end
    end
    java_overload :isValid, 2
end

module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Address; autoload :StreetAddress, "org/allbinary/business/user/address/StreetAddress" unless const_defined?(:StreetAddress, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Address; autoload :StreetAddressData, "org/allbinary/business/user/address/StreetAddressData" unless const_defined?(:StreetAddressData, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Tax; module Components; autoload :TaxData, "org/allbinary/business/user/commerce/money/tax/components/TaxData" unless const_defined?(:TaxData, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper" unless const_defined?(:DomNodeHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper" unless const_defined?(:DomDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :XmlDocumentHelper, "org/allbinary/data/tree/dom/document/XmlDocumentHelper" unless const_defined?(:XmlDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :FREEBLISKET_PATH_GLOBALS, "org/allbinary/globals/FREEBLISKET_PATH_GLOBALS" unless const_defined?(:FREEBLISKET_PATH_GLOBALS, false); end; end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Crypt; module FilePackage; autoload :CryptFileReader, "org/allbinary/logic/control/crypt/file/CryptFileReader" unless const_defined?(:CryptFileReader, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module ObjectConfig; autoload :TransformInfoObjectConfigData, "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigData" unless const_defined?(:TransformInfoObjectConfigData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonPhoneStrings, "org/allbinary/string/CommonPhoneStrings" unless const_defined?(:CommonPhoneStrings, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end; end; end; end

