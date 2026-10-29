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
# package org.allbinary.business.user.commerce.shipping


class ShippingMethodsFactory
    attr_accessor :defaultShippingMethodInterface, :document, :shippingVector

    def initialize_fields
        @defaultShippingMethodInterface = nil
        @document = nil
        @shippingVector = nil
    end
    

    def self.static_init
        stringBuffer = StringMaker.new()
        sep = AbPathData.getInstance().SEPARATOR
        stringBuffer.append(sep)
        stringBuffer.append("generic")
        stringBuffer.append(sep)
        stringBuffer.append("shipping")
        stringBuffer.append(sep)
        SHIPPINGMETHODSFILEPATHSTRING = stringBuffer.to_s
    end
    

    def initialize(abeClientInformation, storeFrontInterface)
        initialize_fields
        stringBuffer = StringMaker.new()
        sep = AbPathData.getInstance().SEPARATOR
        stringBuffer.append(URLGLOBALS.getMainPath())
        stringBuffer.append(FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH)
        stringBuffer.append(storeFrontInterface.getName())
        stringBuffer.append(sep)
        stringBuffer.append(ShippingMethodsFactory::SHIPPINGMETHODSFILEPATHSTRING)
        abPath = AbPath.new(stringBuffer.to_s, SHIPPINGMETHODSFILENAME)
        data = CryptFileReader.new(TransformInfoObjectConfigData.getInstance().UNCRYPTED_EXTENSION, TransformInfoObjectConfigData.getInstance().ENCRYPTED_EXTENSION).get(abPath)
        @document = DomDocumentHelper.create(data)
        @shippingVector = BasicArrayListD.new()
        nodeList = @document.getElementsByTagName(ShippingMethodsData::NAME)
        (0...nodeList.getLength()).each do |index|
            node = nodeList.item(index)
            shippingMethodNodeChildren = node.getChildNodes()
            shippingMethodNameNode = DomSearchHelper.getNode(ShippingMethodData::NAME, shippingMethodNodeChildren)
            classNameNode = DomSearchHelper.getNode(DynamicObjectData::NAME, shippingMethodNameNode.getChildNodes())
            shippingMethodClassName = DomNodeHelper.getTextNodeValue(classNameNode)
            shippingMethodInterface = AbeFactory.getInstance().getInstance(abeClientInformation, shippingMethodClassName)
            @shippingVector.add(shippingMethodInterface)
            defaultShippingMethodNameNode = DomSearchHelper.getNode(ShippingMethodData::DEFAULT, shippingMethodNameNode.getChildNodes())
            defaultShippingMethodNameNodeValue = DomNodeHelper.getTextNodeValue(defaultShippingMethodNameNode)
            if defaultShippingMethodNameNodeValue != nil && (defaultShippingMethodNameNodeValue <=> ShippingMethodData::DEFAULT) == 0
                @defaultShippingMethodInterface = shippingMethodInterface
            end
        end
        if @shippingVector.size() < 1
            @defaultShippingMethodInterface = BasicWeightShippingModuleView.new()
            @shippingVector.add(@defaultShippingMethodInterface)
            @shippingVector.add(NoShippingModuleView.new())
        end
    end
    

    # throws Exception
    def getInstance()
        return @shippingVector
    end
    

    def getDefaultInstance()
        return @defaultShippingMethodInterface
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/DynamicObjectData"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/business/user/commerce/shipping/modules/BasicWeightShippingModuleView"
require "org/allbinary/business/user/commerce/shipping/modules/NoShippingModuleView"
require "org/allbinary/business/user/commerce/shipping/modules/ShippingInterface"
require "org/allbinary/data/tree/dom/DomNodeHelper"
require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/allbinary/data/tree/dom/document/DomDocumentHelper"
require "org/allbinary/globals/FREEBLISKET_PATH_GLOBALS"
require "org/allbinary/globals/URLGLOBALS"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/control/crypt/file/CryptFileReader"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/io/path/AbPathData"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/system/loader/AbeFactory"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigData"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/w3c/dom/NodeList"
require "org/allbinary/business/user/commerce/shipping/ShippingMethodData"
require "org/allbinary/business/user/commerce/shipping/ShippingMethodsData"

class ShippingMethodsFactory
    SHIPPINGMETHODSFILEPATHSTRING = nil
    SHIPPINGMETHODSFILENAME = "shippingMethods.xml"
end

ShippingMethodsFactory.static_init

