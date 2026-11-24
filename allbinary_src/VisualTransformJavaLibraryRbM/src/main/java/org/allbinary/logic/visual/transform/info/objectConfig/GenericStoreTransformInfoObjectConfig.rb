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
# package org.allbinary.logic.visual.transform.info.objectConfig

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfig"

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module ObjectConfig

class GenericStoreTransformInfoObjectConfig < TransformInfoObjectConfig
    attr_accessor :logUtil, :abeClientInformation

    def jfields_org_allbinary_logic_visual_transform_info_objectConfig_GenericStoreTransformInfoObjectConfig
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @abeClientInformation = nil unless instance_variable_defined?(:@abeClientInformation)
    end

    def initialize(*args)
        case args.length
        when 2 then jnew_org_allbinary_logic_visual_transform_info_objectConfig_GenericStoreTransformInfoObjectConfig_2(*args)
        when 3 then jnew_org_allbinary_logic_visual_transform_info_objectConfig_GenericStoreTransformInfoObjectConfig_3(*args)
        when 4 then jnew_org_allbinary_logic_visual_transform_info_objectConfig_GenericStoreTransformInfoObjectConfig_4(*args)
        else raise ArgumentError, "No constructor of GenericStoreTransformInfoObjectConfig takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_logic_visual_transform_info_objectConfig_GenericStoreTransformInfoObjectConfig_2(abeClientInformation, transformInfoInterface)
        GenericStoreTransformInfoObjectConfig.superclass.instance_method(:initialize).bind(self).call(transformInfoInterface)
        jfields_org_allbinary_logic_visual_transform_info_objectConfig_GenericStoreTransformInfoObjectConfig
        @abeClientInformation = abeClientInformation
    end
    

    def jnew_org_allbinary_logic_visual_transform_info_objectConfig_GenericStoreTransformInfoObjectConfig_3(abeClientInformation, transformInfoInterface, document)
        GenericStoreTransformInfoObjectConfig.superclass.instance_method(:initialize).bind(self).call(transformInfoInterface, document)
        jfields_org_allbinary_logic_visual_transform_info_objectConfig_GenericStoreTransformInfoObjectConfig
        @abeClientInformation = abeClientInformation
        self.setDocument(self.generate(self.toXmlDoc()))
    end
    

    def jnew_org_allbinary_logic_visual_transform_info_objectConfig_GenericStoreTransformInfoObjectConfig_4(abeClientInformation, transformInfoInterface, name, type)
        GenericStoreTransformInfoObjectConfig.superclass.instance_method(:initialize).bind(self).call(transformInfoInterface, name, type)
        jfields_org_allbinary_logic_visual_transform_info_objectConfig_GenericStoreTransformInfoObjectConfig
        @abeClientInformation = abeClientInformation
        self.setDocument(self.generate(self.toXmlDoc()))
    end
    

    # throws Exception
    def generate_j1(objectConfigDocument)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append("TransformInfo: ")
            if self.getTransformInfoInterface() != nil
                stringBuffer.append(self.getTransformInfoInterface().getName())
            else
                stringBuffer.append("No Owner!?#@")
            end
            @logUtil.putF(stringBuffer.to_s, self, "generate()")
        end
        transformInfoHttpStoreInterface = self.getTransformInfoInterface()
        objectConfigDocumentString = ::Org::Allbinary::DataPackage::Tree::Dom::Document::XmlDocumentHelper.toString(objectConfigDocument)
        replaceHashMap = self.createReplaceHashMap(transformInfoHttpStoreInterface, objectConfigDocumentString)
        return self.generate(objectConfigDocumentString, replaceHashMap)
    end
    

    # throws Exception
    def createReplaceHashMap(transformInfoHttpStoreInterface, objectConfigDocumentString)
        storeName = transformInfoHttpStoreInterface.getStoreName()
        hashMap = self.createHashMap(transformInfoHttpStoreInterface, objectConfigDocumentString)
        transformInfoObjectConfigData = TransformInfoObjectConfigData.getInstance()
        hashMap.put(transformInfoObjectConfigData.VARKEY + ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME, storeName)
        pageName = ::Org::Allbinary::Logic::Visual::Transform::Template::Util::TransformTemplateCustomizerUtil.getInstance().getPageNameHack(self.getTransformInfoInterface().getName(), storeName)
        hashMap.put(transformInfoObjectConfigData.VARKEY + ::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoData.getInstance().PARTIAL, pageName)
        return hashMap
    end
    java_overload :createReplaceHashMap, 2
    

    # throws Exception
    def createHashMap(transformInfoHttpStoreInterface, objectConfigDocumentString)
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        storeName = transformInfoHttpStoreInterface.getStoreName()
        propertiesHashMap = transformInfoHttpStoreInterface.getPropertiesHashMap()
        templateNameOverride = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().getNonNull(propertiesHashMap.get(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoData.getInstance().PARTIAL))
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("TemplateNameOverride: " + templateNameOverride, self, "generate()")
        end
        templateNameStringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        templateNameStringBuffer.append(storeName)
        templateNameStringBuffer.append(templateNameOverride)
        templateNameStringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE)
        templateNameStringBuffer.append(::Org::Allbinary::Logic::Visual::Transform::Info::RootTransformInfoData::NAME)
        templateNameKey = TransformInfoObjectConfigData.getInstance().VARKEY + ::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoData.getInstance().OWNER
        if (objectConfigDocumentString.index(templateNameKey) || -1) != -1
            templateInterface = ::Org::Allbinary::Logic::Visual::Transform::Template::TransformTemplateFactory.getInstance().getInstance(@abeClientInformation, templateNameStringBuffer.to_s, transformInfoHttpStoreInterface.getPropertiesHashMap(), transformInfoHttpStoreInterface.getPageContext())
            selectedTemplate = templateInterface.getName()
            hashMap.put(templateNameKey, selectedTemplate)
        end
        return hashMap
    end
    java_overload :createHashMap, 2
    

    # throws Exception
    def generate_j2(objectConfigDocumentString, hashMap)
        replace = ::Org::Allbinary::Logic::StringPackage::Regex::Replace::Replace.new(hashMap)
        newObjectConfigDocument = ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create(replace.all(objectConfigDocumentString))
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Final ObjectConfig: " + ::Org::Allbinary::DataPackage::Tree::Dom::Document::XmlDocumentHelper.toString(newObjectConfigDocument), self, "generate()")
        end
        return newObjectConfigDocument
    end

    def generate(*java_overload_args)
        return generate_j1(*java_overload_args) if java_overload_args.length == 1
        return generate_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method generate takes #{java_overload_args.length} arguments"
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper" unless const_defined?(:DomDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :XmlDocumentHelper, "org/allbinary/data/tree/dom/document/XmlDocumentHelper" unless const_defined?(:XmlDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; module Regex; module Replace; autoload :Replace, "org/allbinary/logic/string/regex/replace/Replace" unless const_defined?(:Replace, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :RootTransformInfoData, "org/allbinary/logic/visual/transform/info/RootTransformInfoData" unless const_defined?(:RootTransformInfoData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoData, "org/allbinary/logic/visual/transform/info/TransformInfoData" unless const_defined?(:TransformInfoData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoHttp, "org/allbinary/logic/visual/transform/info/TransformInfoHttp" unless const_defined?(:TransformInfoHttp, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Template; autoload :TransformTemplateFactory, "org/allbinary/logic/visual/transform/template/TransformTemplateFactory" unless const_defined?(:TransformTemplateFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Template; autoload :TransformTemplateInterface, "org/allbinary/logic/visual/transform/template/TransformTemplateInterface" unless const_defined?(:TransformTemplateInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Template; module Util; autoload :TransformTemplateCustomizerUtil, "org/allbinary/logic/visual/transform/template/util/TransformTemplateCustomizerUtil" unless const_defined?(:TransformTemplateCustomizerUtil, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :TransformInfoObjectConfigData, "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigData" unless const_defined?(:TransformInfoObjectConfigData, false)

end; end; end; end; end; end; end

