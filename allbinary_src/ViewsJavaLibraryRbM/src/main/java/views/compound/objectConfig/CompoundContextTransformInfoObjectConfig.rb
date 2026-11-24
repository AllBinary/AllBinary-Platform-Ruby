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
# package views.compound.objectConfig

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/logic/visual/transform/info/objectConfig/GenericStoreTransformInfoObjectConfig"

module ::Views; module Compound; module ObjectConfig

class CompoundContextTransformInfoObjectConfig < ::Org::Allbinary::Logic::Visual::Transform::Info::ObjectConfig::GenericStoreTransformInfoObjectConfig
    attr_accessor :logUtil

    def jfields_views_compound_objectConfig_CompoundContextTransformInfoObjectConfig
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end

    def initialize(*args)
        case args.length
        when 2 then jnew_views_compound_objectConfig_CompoundContextTransformInfoObjectConfig_2(*args)
        when 3 then jnew_views_compound_objectConfig_CompoundContextTransformInfoObjectConfig_3(*args)
        when 4 then jnew_views_compound_objectConfig_CompoundContextTransformInfoObjectConfig_4(*args)
        else raise ArgumentError, "No constructor of CompoundContextTransformInfoObjectConfig takes #{args.length} arguments"
        end
    end
    

    def jnew_views_compound_objectConfig_CompoundContextTransformInfoObjectConfig_2(abeClientInformation, transformInfoInterface)
        CompoundContextTransformInfoObjectConfig.superclass.instance_method(:initialize).bind(self).call(abeClientInformation, transformInfoInterface)
        jfields_views_compound_objectConfig_CompoundContextTransformInfoObjectConfig
    end
    

    def jnew_views_compound_objectConfig_CompoundContextTransformInfoObjectConfig_3(abeClientInformation, transformInfoInterface, document)
        CompoundContextTransformInfoObjectConfig.superclass.instance_method(:initialize).bind(self).call(abeClientInformation, transformInfoInterface, document)
        jfields_views_compound_objectConfig_CompoundContextTransformInfoObjectConfig
        self.setDocument(self.generate(self.toXmlDoc()))
    end
    

    def jnew_views_compound_objectConfig_CompoundContextTransformInfoObjectConfig_4(abeClientInformation, transformInfoInterface, name, type)
        CompoundContextTransformInfoObjectConfig.superclass.instance_method(:initialize).bind(self).call(abeClientInformation, transformInfoInterface, name, type)
        jfields_views_compound_objectConfig_CompoundContextTransformInfoObjectConfig
        self.setDocument(self.generate(self.toXmlDoc()))
    end
    

    # throws Exception
    def get()
        storeName = self.getTransformInfoInterface().getStoreName()
        httpTransformInfoInterface = self.getTransformInfoInterface()
        templateNameOverride = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().getNonNull(httpTransformInfoInterface.getPropertiesHashMap().get(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoData.getInstance().PARTIAL))
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(storeName)
        stringBuffer.append(templateNameOverride)
        stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE)
        stringBuffer.append(::Org::Allbinary::Logic::Visual::Transform::Info::RootTransformInfoData::NAME)
        rootComponentInterface = ::Org::Allbinary::Logic::Visual::Transform::TransformFactory.getInstance().getInstance(@abeClientInformation, stringBuffer.to_s, self.getTransformInfoInterface())
        viewVector = self.getTransformDomNodes()
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Root View Called with: " + (viewVector.size()).to_s, self, "get(transformInfoInterface)")
        end
        rootView = rootComponentInterface.view()
        startXMLHeader = "<xsl:text disable-output-escaping=\"yes\" ><![CDATA["
        endXMLHeader = "]]></xsl:text>"
        size = viewVector.size()
        (0...size).each do |index|
            objectConfigTransformInfoDomNode = viewVector.get(index)
            templateKey = objectConfigTransformInfoDomNode.getReplaceKey()
            componentInterface = ::Org::Allbinary::Logic::Visual::Transform::TransformFactory.getInstance().getInstance(@abeClientInformation, objectConfigTransformInfoDomNode.getTransformInfoInterface().getName(), self.getTransformInfoInterface())
            replacementViewString = componentInterface.view()
            replacementViewString = ::Org::Allbinary::DataPackage::Tree::Dom::Document::DocumentToNode.convertDocumentToNodeString(replacementViewString)
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append(startXMLHeader)
            stringBuffer.append(replacementViewString)
            stringBuffer.append(endXMLHeader)
            templateValue = stringBuffer.to_s
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append("Replacing: ")
                stringBuffer.append(templateKey)
                stringBuffer.append(" with ")
                stringBuffer.append(templateValue)
                @logUtil.putF(stringBuffer.to_s, self, "get()")
            end
            replace = ::Org::Allbinary::Logic::StringPackage::Regex::Replace::Replace.new(templateKey, templateValue)
            rootView = replace.all(rootView)
        end
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("End: Result of a compound view: " + rootView, self, "get()")
        end
        return rootView
    end
    java_overload :get, 0
    

    # throws Exception
    def createInputStream()
        completeTemplateViewBytes = self.get().getBytes()
        bais = ::Java::Io::ByteArrayInputStream.new(completeTemplateViewBytes)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Template: " + completeTemplateViewBytes.pack("c*").force_encoding("UTF-8").to_s, self, "createInputStream()")
        end
        return bais
    end
    java_overload :createInputStream, 0
end

module ::Java; module Io; autoload :ByteArrayInputStream, "java/io/ByteArrayInputStream" unless const_defined?(:ByteArrayInputStream, false); end; end
module ::Java; module Io; autoload :InputStream, "java/io/InputStream" unless const_defined?(:InputStream, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :DocumentToNode, "org/allbinary/data/tree/dom/document/DocumentToNode" unless const_defined?(:DocumentToNode, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; module Regex; module Replace; autoload :Replace, "org/allbinary/logic/string/regex/replace/Replace" unless const_defined?(:Replace, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; autoload :TransformFactory, "org/allbinary/logic/visual/transform/TransformFactory" unless const_defined?(:TransformFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; autoload :TransformInterface, "org/allbinary/logic/visual/transform/TransformInterface" unless const_defined?(:TransformInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :RootTransformInfoData, "org/allbinary/logic/visual/transform/info/RootTransformInfoData" unless const_defined?(:RootTransformInfoData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoData, "org/allbinary/logic/visual/transform/info/TransformInfoData" unless const_defined?(:TransformInfoData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoDomNode, "org/allbinary/logic/visual/transform/info/TransformInfoDomNode" unless const_defined?(:TransformInfoDomNode, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoHttpInterface, "org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface" unless const_defined?(:TransformInfoHttpInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end

