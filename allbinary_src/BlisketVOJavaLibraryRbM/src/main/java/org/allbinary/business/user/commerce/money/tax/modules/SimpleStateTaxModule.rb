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

autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
autoload :StreetAddress, "org/allbinary/business/user/address/StreetAddress"
autoload :StreetAddressData, "org/allbinary/business/user/address/StreetAddressData"
autoload :TaxData, "org/allbinary/business/user/commerce/money/tax/components/TaxData"
autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper"
autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper"
autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper"
autoload :XmlDocumentHelper, "org/allbinary/data/tree/dom/document/XmlDocumentHelper"
autoload :FREEBLISKET_PATH_GLOBALS, "org/allbinary/globals/FREEBLISKET_PATH_GLOBALS"
autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CryptFileReader, "org/allbinary/logic/control/crypt/file/CryptFileReader"
autoload :AbPath, "org/allbinary/logic/io/path/AbPath"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil"
autoload :TransformInfoObjectConfigData, "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigData"
autoload :CommonPhoneStrings, "org/allbinary/string/CommonPhoneStrings"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"
autoload :NodeList, "org/w3c/dom/NodeList"

