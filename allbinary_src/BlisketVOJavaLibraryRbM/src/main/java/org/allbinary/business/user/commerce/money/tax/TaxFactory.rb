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

autoload :DynamicObjectData, "org/allbinary/business/DynamicObjectData"
autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
autoload :TaxData, "org/allbinary/business/user/commerce/money/tax/components/TaxData"
autoload :SimpleStateTaxModule, "org/allbinary/business/user/commerce/money/tax/modules/SimpleStateTaxModule"
autoload :TaxModuleInterface, "org/allbinary/business/user/commerce/money/tax/modules/TaxModuleInterface"
autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper"
autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper"
autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper"
autoload :FREEBLISKET_PATH_GLOBALS, "org/allbinary/globals/FREEBLISKET_PATH_GLOBALS"
autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CryptFileReader, "org/allbinary/logic/control/crypt/file/CryptFileReader"
autoload :AbPath, "org/allbinary/logic/io/path/AbPath"
autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :AbeFactory, "org/allbinary/logic/system/loader/AbeFactory"
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
autoload :TransformInfoObjectConfigData, "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigData"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"
autoload :NodeList, "org/w3c/dom/NodeList"

begin
    TaxFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

