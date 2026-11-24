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
# package views.business.context.modules.storefront.customizer.template.objectConfig

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfig"

module ::Views; module Business; module Context; module Modules; module Storefront; module Customizer; module Template; module ObjectConfig

class NoTemplateTransformInfoObjectConfig < ::Org::Allbinary::Logic::Visual::Transform::Info::ObjectConfig::TransformInfoObjectConfig
    attr_accessor :logUtil

    def jfields_views_business_context_modules_storefront_customizer_template_objectConfig_NoTemplateTransformInfoObjectConfig
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_views_business_context_modules_storefront_customizer_template_objectConfig_NoTemplateTransformInfoObjectConfig_1(*args)
        when 2 then jnew_views_business_context_modules_storefront_customizer_template_objectConfig_NoTemplateTransformInfoObjectConfig_2(*args)
        when 3 then jnew_views_business_context_modules_storefront_customizer_template_objectConfig_NoTemplateTransformInfoObjectConfig_3(*args)
        else raise ArgumentError, "No constructor of NoTemplateTransformInfoObjectConfig takes #{args.length} arguments"
        end
    end
    

    def jnew_views_business_context_modules_storefront_customizer_template_objectConfig_NoTemplateTransformInfoObjectConfig_1(transformInfoInterface)
        NoTemplateTransformInfoObjectConfig.superclass.instance_method(:initialize).bind(self).call(transformInfoInterface)
        jfields_views_business_context_modules_storefront_customizer_template_objectConfig_NoTemplateTransformInfoObjectConfig
    end
    

    def jnew_views_business_context_modules_storefront_customizer_template_objectConfig_NoTemplateTransformInfoObjectConfig_2(transformInfoInterface, document)
        NoTemplateTransformInfoObjectConfig.superclass.instance_method(:initialize).bind(self).call(transformInfoInterface, document)
        jfields_views_business_context_modules_storefront_customizer_template_objectConfig_NoTemplateTransformInfoObjectConfig
        self.setDocument(self.generate(self.toXmlDoc()))
    end
    

    def jnew_views_business_context_modules_storefront_customizer_template_objectConfig_NoTemplateTransformInfoObjectConfig_3(transformInfoInterface, name, type)
        NoTemplateTransformInfoObjectConfig.superclass.instance_method(:initialize).bind(self).call(transformInfoInterface, name, type)
        jfields_views_business_context_modules_storefront_customizer_template_objectConfig_NoTemplateTransformInfoObjectConfig
        self.setDocument(self.generate(self.toXmlDoc()))
    end
    

    # throws Exception
    def generate(objectConfigDocument)
        docString = ::Org::Allbinary::DataPackage::Tree::Dom::Document::XmlDocumentHelper.toString(objectConfigDocument)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Initial ObjectConfig: " + docString, self, "generate()")
        end
        storeName = self.getTransformInfoInterface().getStoreName()
        viewName = self.getTransformInfoInterface().getName()
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        _VARKEY = ::Org::Allbinary::Logic::Visual::Transform::Info::ObjectConfig::TransformInfoObjectConfigData.getInstance().VARKEY
        hashMap.put(_VARKEY + (::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME).to_s, storeName)
        hashMap.put(_VARKEY + (::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoData.getInstance().OWNER).to_s, viewName)
        pageName = ::Org::Allbinary::Logic::Visual::Transform::Template::Util::TransformTemplateCustomizerUtil.getInstance().getPageNameHack(self.getTransformInfoInterface().getName(), self.getTransformInfoInterface().getStoreName())
        hashMap.put(_VARKEY + (::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoData.getInstance().PARTIAL).to_s, pageName)
        replace = ::Org::Allbinary::Logic::StringPackage::Regex::Replace::Replace.new(hashMap)
        newObjectConfigDocument = ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create(replace.all(docString))
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Final ObjectConfig: " + ::Org::Allbinary::DataPackage::Tree::Dom::Document::XmlDocumentHelper.toString(newObjectConfigDocument), self, "generate()")
        end
        return newObjectConfigDocument
    end
    java_overload :generate, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper" unless const_defined?(:DomDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :XmlDocumentHelper, "org/allbinary/data/tree/dom/document/XmlDocumentHelper" unless const_defined?(:XmlDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; module Regex; module Replace; autoload :Replace, "org/allbinary/logic/string/regex/replace/Replace" unless const_defined?(:Replace, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoData, "org/allbinary/logic/visual/transform/info/TransformInfoData" unless const_defined?(:TransformInfoData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module ObjectConfig; autoload :TransformInfoObjectConfigData, "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigData" unless const_defined?(:TransformInfoObjectConfigData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Template; module Util; autoload :TransformTemplateCustomizerUtil, "org/allbinary/logic/visual/transform/template/util/TransformTemplateCustomizerUtil" unless const_defined?(:TransformTemplateCustomizerUtil, false); end; end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end; end; end; end

