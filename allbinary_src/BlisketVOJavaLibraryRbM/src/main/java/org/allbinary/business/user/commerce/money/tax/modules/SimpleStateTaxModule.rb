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

require "org/allbinary/business/user/commerce/money/tax/modules/TaxModuleInterface"

class SimpleStateTaxModule
    include TaxModuleInterface
    attr_accessor :logUtil, :commonStrings, :streetAddress, :storeFrontInterface, :ALL, :STATETAXPATH, :STATETAXFILE, :document

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @streetAddress = nil
        @storeFrontInterface = nil
        @ALL = CommonPhoneStrings.getInstance().STAR
        @STATETAXPATH = "/generic/taxes/"
        @STATETAXFILE = "stateTaxation.xml"
        @document = nil
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def getTaxRate(streetAddress, storeFrontInterface)
        @streetAddress = streetAddress
        @storeFrontInterface = storeFrontInterface
        fileAbPath = AbPath.new((URLGLOBALS.getMainPath() + FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH).to_s + @storeFrontInterface.getName() + @STATETAXPATH, @STATETAXFILE)
        data = CryptFileReader.new(TransformInfoObjectConfigData.getInstance().UNCRYPTED_EXTENSION, TransformInfoObjectConfigData.getInstance().ENCRYPTED_EXTENSION).get(fileAbPath)
        @document = DomDocumentHelper.create(data)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAX)
            @logUtil.putF("Tax Doc: " + XmlDocumentHelper.toString(@document), self, "getTaxRate")
        end
        state = @streetAddress.getState()
        country = @streetAddress.getCountry()
        state = state.upcase
        nodeList = @document.getElementsByTagName(TaxData::NAME)
        (0...nodeList.getLength()).each do |index|
            node = nodeList.item(index)
            taxNodeChildren = node.getChildNodes()
            streetAddressNode = DomSearchHelper.getNode(StreetAddressData::NAME, taxNodeChildren)
            taxableStreetAddress = StreetAddress.new(streetAddressNode)
            stringValidationUtil = StringValidationUtil.getInstance()
            if !stringValidationUtil.isEmpty(country) && !stringValidationUtil.isEmpty(taxableStreetAddress.getCountry()) && (country <=> taxableStreetAddress.getCountry()) == 0
                if state != nil && taxableStreetAddress.getState() != nil && (state <=> taxableStreetAddress.getState()) == 0
                    rateNode = DomSearchHelper.getNode(TaxData::RATE, taxNodeChildren)
                    taxRate = DomNodeHelper.getTextNodeValue(rateNode)
                    taxRateFloat = taxRate.to_f * .01
                    return taxRateFloat
                end
            end
        end
        return 0
    end
    

    def isValid(streetAddress, storeFrontInterface)
        begin
            @streetAddress = streetAddress
            @storeFrontInterface = storeFrontInterface
            fileAbPath = AbPath.new((URLGLOBALS.getMainPath() + FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH).to_s + @storeFrontInterface.getName() + @STATETAXPATH, @STATETAXFILE)
            data = CryptFileReader.new(TransformInfoObjectConfigData.getInstance().UNCRYPTED_EXTENSION, TransformInfoObjectConfigData.getInstance().ENCRYPTED_EXTENSION).get(fileAbPath)
            @document = DomDocumentHelper.create(data)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAX)
                @logUtil.putF("Tax Doc: " + XmlDocumentHelper.toString(@document), self, @commonStrings.IS_VALID)
            end
            country = @streetAddress.getCountry()
            rootNode = @document.getElementsByTagName(TransformInfoObjectConfigData.getInstance().NAME).item(0)
            nodeList = @document.getElementsByTagName(TaxData::NAME)
            (0...nodeList.getLength()).each do |index|
                node = nodeList.item(index)
                taxNodeChildren = node.getChildNodes()
                streetAddressNode = DomSearchHelper.getNode(StreetAddressData::NAME, taxNodeChildren)
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAX)
                    stringBuffer = StringMaker.new()
                    stringBuffer.append("StreetAddress Node: ")
                    stringBuffer.append(streetAddressNode.getNodeName())
                    stringBuffer.append(" Value: ")
                    stringBuffer.append(streetAddressNode.getNodeValue())
                    stringBuffer.append(" Number Of Children: ")
                    stringBuffer.appendint((streetAddressNode.getChildNodes().getLength()).to_i)
                    @logUtil.putF(stringBuffer.to_s, self, @commonStrings.IS_VALID)
                end
                taxableStreetAddress = StreetAddress.new(streetAddressNode)
                stringValidationUtil = StringValidationUtil.getInstance()
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
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to validate", self, @commonStrings.IS_VALID, e)
            end
            return false
        end
    end
end

require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/business/user/address/StreetAddress"
require "org/allbinary/business/user/address/StreetAddressData"
require "org/allbinary/business/user/commerce/money/tax/components/TaxData"
require "org/allbinary/data/tree/dom/DomNodeHelper"
require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/allbinary/data/tree/dom/document/DomDocumentHelper"
require "org/allbinary/data/tree/dom/document/XmlDocumentHelper"
require "org/allbinary/globals/FREEBLISKET_PATH_GLOBALS"
require "org/allbinary/globals/URLGLOBALS"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/control/crypt/file/CryptFileReader"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigData"
require "org/allbinary/string/CommonPhoneStrings"
require "org/allbinary/string/CommonStrings"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/w3c/dom/NodeList"

