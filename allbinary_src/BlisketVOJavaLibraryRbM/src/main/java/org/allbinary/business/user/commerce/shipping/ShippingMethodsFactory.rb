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
        (ShippingMethodsFactory.send(:remove_const, :SHIPPINGMETHODSFILEPATHSTRING) if ShippingMethodsFactory.const_defined?(:SHIPPINGMETHODSFILEPATHSTRING, false); ShippingMethodsFactory.const_set(:SHIPPINGMETHODSFILEPATHSTRING, stringBuffer.to_s))
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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:SHIPPINGMETHODSFILENAME, "shippingMethods.xml")
        begin
            const_set(:SHIPPINGMETHODSFILEPATHSTRING, nil)
            static_init
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ShippingMethodsFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SHIPPINGMETHODSFILEPATHSTRING, :SHIPPINGMETHODSFILENAME].include?(name)
        end
        super
    end
end

autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :DynamicObjectData, "org/allbinary/business/DynamicObjectData"
autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
autoload :BasicWeightShippingModuleView, "org/allbinary/business/user/commerce/shipping/modules/BasicWeightShippingModuleView"
autoload :NoShippingModuleView, "org/allbinary/business/user/commerce/shipping/modules/NoShippingModuleView"
autoload :ShippingInterface, "org/allbinary/business/user/commerce/shipping/modules/ShippingInterface"
autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper"
autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper"
autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper"
autoload :FREEBLISKET_PATH_GLOBALS, "org/allbinary/globals/FREEBLISKET_PATH_GLOBALS"
autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :CryptFileReader, "org/allbinary/logic/control/crypt/file/CryptFileReader"
autoload :AbPath, "org/allbinary/logic/io/path/AbPath"
autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :AbeFactory, "org/allbinary/logic/system/loader/AbeFactory"
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
autoload :TransformInfoObjectConfigData, "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigData"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"
autoload :NodeList, "org/w3c/dom/NodeList"
autoload :ShippingMethodData, "org/allbinary/business/user/commerce/shipping/ShippingMethodData"
autoload :ShippingMethodsData, "org/allbinary/business/user/commerce/shipping/ShippingMethodsData"

begin
    ShippingMethodsFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

