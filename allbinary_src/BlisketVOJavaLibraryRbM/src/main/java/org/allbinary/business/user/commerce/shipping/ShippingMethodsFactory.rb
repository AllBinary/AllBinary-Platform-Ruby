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

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Business; module User; module Commerce; module Shipping

class ShippingMethodsFactory
    attr_accessor :defaultShippingMethodInterface, :document, :shippingVector

    def jfields_org_allbinary_business_user_commerce_shipping_ShippingMethodsFactory
        @defaultShippingMethodInterface = nil unless instance_variable_defined?(:@defaultShippingMethodInterface)
        @document = nil unless instance_variable_defined?(:@document)
        @shippingVector = nil unless instance_variable_defined?(:@shippingVector)
    end
    

    def self.static_init
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        sep = ::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR
        stringBuffer.append(sep)
        stringBuffer.append("generic")
        stringBuffer.append(sep)
        stringBuffer.append("shipping")
        stringBuffer.append(sep)
        (ShippingMethodsFactory.instance_exec(stringBuffer.to_s) { |java_value| remove_const(:SHIPPINGMETHODSFILEPATHSTRING) if const_defined?(:SHIPPINGMETHODSFILEPATHSTRING, false); const_set(:SHIPPINGMETHODSFILEPATHSTRING, java_value) })
    end
    

    def initialize(abeClientInformation, storeFrontInterface)
        jfields_org_allbinary_business_user_commerce_shipping_ShippingMethodsFactory
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        sep = ::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR
        stringBuffer.append(::Org::Allbinary::Globals::URLGLOBALS.getMainPath())
        stringBuffer.append(::Org::Allbinary::Globals::FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH)
        stringBuffer.append(storeFrontInterface.getName())
        stringBuffer.append(sep)
        stringBuffer.append(ShippingMethodsFactory::SHIPPINGMETHODSFILEPATHSTRING)
        abPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(stringBuffer.to_s, SHIPPINGMETHODSFILENAME)
        data = ::Org::Allbinary::Logic::ControlPackage::Crypt::FilePackage::CryptFileReader.new(::Org::Allbinary::Logic::Visual::Transform::Info::ObjectConfig::TransformInfoObjectConfigData.getInstance().UNCRYPTED_EXTENSION, ::Org::Allbinary::Logic::Visual::Transform::Info::ObjectConfig::TransformInfoObjectConfigData.getInstance().ENCRYPTED_EXTENSION).get(abPath)
        @document = ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create(data)
        @shippingVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        nodeList = @document.getElementsByTagName(ShippingMethodsData::NAME)
        (0...nodeList.getLength()).each do |index|
            node = nodeList.item(index)
            shippingMethodNodeChildren = node.getChildNodes()
            shippingMethodNameNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(ShippingMethodData::NAME, shippingMethodNodeChildren)
            classNameNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(::Org::Allbinary::Business::DynamicObjectData::NAME, shippingMethodNameNode.getChildNodes())
            shippingMethodClassName = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(classNameNode)
            shippingMethodInterface = ::Org::Allbinary::Logic::System::Loader::AbeFactory.getInstance().getInstance(abeClientInformation, shippingMethodClassName)
            @shippingVector.add(shippingMethodInterface)
            defaultShippingMethodNameNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(ShippingMethodData::DEFAULT, shippingMethodNameNode.getChildNodes())
            defaultShippingMethodNameNodeValue = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(defaultShippingMethodNameNode)
            if defaultShippingMethodNameNodeValue != nil && (defaultShippingMethodNameNodeValue <=> ShippingMethodData::DEFAULT) == 0
                @defaultShippingMethodInterface = shippingMethodInterface
            end
        end
        if @shippingVector.size() < 1
            @defaultShippingMethodInterface = ::Org::Allbinary::Business::User::Commerce::Shipping::Modules::BasicWeightShippingModuleView.new()
            @shippingVector.add(@defaultShippingMethodInterface)
            @shippingVector.add(::Org::Allbinary::Business::User::Commerce::Shipping::Modules::NoShippingModuleView.new())
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

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; autoload :DynamicObjectData, "org/allbinary/business/DynamicObjectData" unless const_defined?(:DynamicObjectData, false); end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Shipping; module Modules; autoload :BasicWeightShippingModuleView, "org/allbinary/business/user/commerce/shipping/modules/BasicWeightShippingModuleView" unless const_defined?(:BasicWeightShippingModuleView, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Shipping; module Modules; autoload :NoShippingModuleView, "org/allbinary/business/user/commerce/shipping/modules/NoShippingModuleView" unless const_defined?(:NoShippingModuleView, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Shipping; module Modules; autoload :ShippingInterface, "org/allbinary/business/user/commerce/shipping/modules/ShippingInterface" unless const_defined?(:ShippingInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper" unless const_defined?(:DomNodeHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper" unless const_defined?(:DomDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :FREEBLISKET_PATH_GLOBALS, "org/allbinary/globals/FREEBLISKET_PATH_GLOBALS" unless const_defined?(:FREEBLISKET_PATH_GLOBALS, false); end; end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Crypt; module FilePackage; autoload :CryptFileReader, "org/allbinary/logic/control/crypt/file/CryptFileReader" unless const_defined?(:CryptFileReader, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Loader; autoload :AbeFactory, "org/allbinary/logic/system/loader/AbeFactory" unless const_defined?(:AbeFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module ObjectConfig; autoload :TransformInfoObjectConfigData, "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigData" unless const_defined?(:TransformInfoObjectConfigData, false); end; end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end
autoload :ShippingMethodData, "org/allbinary/business/user/commerce/shipping/ShippingMethodData" unless const_defined?(:ShippingMethodData, false)
autoload :ShippingMethodsData, "org/allbinary/business/user/commerce/shipping/ShippingMethodsData" unless const_defined?(:ShippingMethodsData, false)

begin
    ShippingMethodsFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

