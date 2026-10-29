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


class TaxFactory
    attr_accessor :logUtil, :commonStrings, :TAXATIONFILENAME

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @TAXATIONFILENAME = "taxationMethod.xml"
    end
    

    def self.getInstance()
        return TaxFactory.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(abeClientInformation, storeFrontInterface)
        stringBuffer = StringMaker.new()
        stringBuffer.append(URLGLOBALS.getMainPath())
        stringBuffer.append(FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH)
        stringBuffer.append(storeFrontInterface.getName())
        stringBuffer.append(AbPathData.getInstance().SEPARATOR)
        stringBuffer.append("generic")
        stringBuffer.append(AbPathData.getInstance().SEPARATOR)
        stringBuffer.append("taxes")
        stringBuffer.append(AbPathData.getInstance().SEPARATOR)
        abPath = AbPath.new(stringBuffer.to_s, @TAXATIONFILENAME)
        transformInfoObjectConfigData = TransformInfoObjectConfigData.getInstance()
        data = CryptFileReader.new(transformInfoObjectConfigData.UNCRYPTED_EXTENSION, transformInfoObjectConfigData.ENCRYPTED_EXTENSION).get(abPath)
        document = DomDocumentHelper.create(data)
        taxNameNodeList = document.getElementsByTagName(TaxData::NAME)
        (0...taxNameNodeList.getLength()).each do |index|
            node = taxNameNodeList.item(index)
            nodeList = node.getChildNodes()
            if nodeList != nil
                classNameNode = DomSearchHelper.getNode(DynamicObjectData::NAME, nodeList)
                if classNameNode != nil
                    className = DomNodeHelper.getTextNodeValue(classNameNode)
                    return AbeFactory.getInstance().getInstance(abeClientInformation, className)
                else
                    if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAX)
                        @logUtil.putF("Class Node Null", self, @commonStrings.GET_INSTANCE)
                    end
                end
            else
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAX)
                    @logUtil.putF("Tax Name Node Node Children", self, @commonStrings.GET_INSTANCE)
                end
            end
        end
        return SimpleStateTaxModule.new()
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/business/DynamicObjectData"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/business/user/commerce/money/tax/components/TaxData"
require "org/allbinary/business/user/commerce/money/tax/modules/SimpleStateTaxModule"
require "org/allbinary/business/user/commerce/money/tax/modules/TaxModuleInterface"
require "org/allbinary/data/tree/dom/DomNodeHelper"
require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/allbinary/data/tree/dom/document/DomDocumentHelper"
require "org/allbinary/globals/FREEBLISKET_PATH_GLOBALS"
require "org/allbinary/globals/URLGLOBALS"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/control/crypt/file/CryptFileReader"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/io/path/AbPathData"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/system/loader/AbeFactory"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigData"
require "org/allbinary/string/CommonStrings"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/w3c/dom/NodeList"

class TaxFactory
    @@instance = TaxFactory.new()
end

