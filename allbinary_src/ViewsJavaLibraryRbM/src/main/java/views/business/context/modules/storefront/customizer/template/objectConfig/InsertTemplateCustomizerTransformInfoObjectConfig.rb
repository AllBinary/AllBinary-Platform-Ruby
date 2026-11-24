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
require "views/business/context/modules/storefront/customizer/template/objectConfig/NoTemplateTransformInfoObjectConfig"

module ::Views; module Business; module Context; module Modules; module Storefront; module Customizer; module Template; module ObjectConfig

class InsertTemplateCustomizerTransformInfoObjectConfig < NoTemplateTransformInfoObjectConfig
    attr_accessor :logUtil

    def jfields_views_business_context_modules_storefront_customizer_template_objectConfig_InsertTemplateCustomizerTransformInfoObjectConfig
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_views_business_context_modules_storefront_customizer_template_objectConfig_InsertTemplateCustomizerTransformInfoObjectConfig_1(*args)
        when 2 then jnew_views_business_context_modules_storefront_customizer_template_objectConfig_InsertTemplateCustomizerTransformInfoObjectConfig_2(*args)
        when 3 then jnew_views_business_context_modules_storefront_customizer_template_objectConfig_InsertTemplateCustomizerTransformInfoObjectConfig_3(*args)
        else raise ArgumentError, "No constructor of InsertTemplateCustomizerTransformInfoObjectConfig takes #{args.length} arguments"
        end
    end
    

    def jnew_views_business_context_modules_storefront_customizer_template_objectConfig_InsertTemplateCustomizerTransformInfoObjectConfig_1(transformInfoInterface)
        InsertTemplateCustomizerTransformInfoObjectConfig.superclass.instance_method(:initialize).bind(self).call(transformInfoInterface)
        jfields_views_business_context_modules_storefront_customizer_template_objectConfig_InsertTemplateCustomizerTransformInfoObjectConfig
    end
    

    def jnew_views_business_context_modules_storefront_customizer_template_objectConfig_InsertTemplateCustomizerTransformInfoObjectConfig_2(transformInfoInterface, document)
        InsertTemplateCustomizerTransformInfoObjectConfig.superclass.instance_method(:initialize).bind(self).call(transformInfoInterface, document)
        jfields_views_business_context_modules_storefront_customizer_template_objectConfig_InsertTemplateCustomizerTransformInfoObjectConfig
        self.setDocument(self.generate(self.toXmlDoc()))
    end
    

    def jnew_views_business_context_modules_storefront_customizer_template_objectConfig_InsertTemplateCustomizerTransformInfoObjectConfig_3(transformInfoInterface, name, type)
        InsertTemplateCustomizerTransformInfoObjectConfig.superclass.instance_method(:initialize).bind(self).call(transformInfoInterface, name, type)
        jfields_views_business_context_modules_storefront_customizer_template_objectConfig_InsertTemplateCustomizerTransformInfoObjectConfig
        self.setDocument(self.generate(self.toXmlDoc()))
    end
    

    # throws Exception
    def set(aParentViewName)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Setting: " + aParentViewName, self, "set()")
        end
        document = self.toXmlDoc()
        parentComponentsNodeList = document.getElementsByTagName(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfosData.getInstance().NAME)
        if parentComponentsNodeList != nil && parentComponentsNodeList.getLength() > 0
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Replacing", self, "set()")
            end
            componentNode = parentComponentsNodeList.item(0).getChildNodes().item(0)
            if componentNode != nil
                document.removeChild(componentNode)
            end
            parentComponentsNodeList.item(0).appendChild(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoDomNodeView.new(aParentViewName).toXmlNode(document))
        else
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Setting", self, "set()")
            end
            objectConfigNode = document.getElementsByTagName(::Org::Allbinary::Logic::Visual::Transform::Info::ObjectConfig::TransformInfoObjectConfigData.getInstance().NAME).item(0)
            parentComponentsNode = document.createElement(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfosData.getInstance().NAME)
            objectConfigNode.appendChild(parentComponentsNode)
            transformInfoDomNodeView = ::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoDomNodeView.new(aParentViewName)
            parentComponentsNode.appendChild(transformInfoDomNodeView.toXmlNode(document))
        end
    end
    java_overload :set, 1
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoDomNodeView, "org/allbinary/logic/visual/transform/info/TransformInfoDomNodeView" unless const_defined?(:TransformInfoDomNodeView, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfosData, "org/allbinary/logic/visual/transform/info/TransformInfosData" unless const_defined?(:TransformInfosData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module ObjectConfig; autoload :TransformInfoObjectConfigData, "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigData" unless const_defined?(:TransformInfoObjectConfigData, false); end; end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NodeList, "org/w3c/dom/NodeList" unless const_defined?(:NodeList, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end; end; end; end

