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
# package views.business.context

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "views/business/context/modules/storefront/HttpStoreComponentView"

module ::Views; module Business; module Context

class OverrideObjectConfigRootContextView < ::Views::Business::Context::Modules::Storefront::HttpStoreComponentView
    attr_accessor :logUtil

    def jfields_views_business_context_OverrideObjectConfigRootContextView
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        jfields_views_business_context_OverrideObjectConfigRootContextView
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("View Name: " + transformInfoInterface.getName(), self, "OverrideObjectRootContextView()")
        end
    end
    

    # throws Exception
    def view()
        begin
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("View Name: " + self.getTransformInfoInterface().getName(), self, "view()")
            end
            rootTransformInfoInterface = ::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoHttp.new(self.getTransformInfoInterface())
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append(self.getTransformInfoInterface().getStoreName())
            stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE)
            nameStart = stringBuffer.to_s
            if self.getTransformInfoInterface().getName().indexOf(::Org::Allbinary::Logic::Visual::Transform::Info::GeneratorTransformInfoData::NAME) > 0
                rootTransformInfoInterface.setName(nameStart + (::Org::Allbinary::Logic::Visual::Transform::Info::GeneratorTransformInfoData::NAME).to_s)
            elsif self.getTransformInfoInterface().getName().indexOf(::Org::Allbinary::Logic::Visual::Transform::Info::RootTransformInfoData::NAME) > 0
                rootTransformInfoInterface.setName(nameStart + (::Org::Allbinary::Logic::Visual::Transform::Info::RootTransformInfoData::NAME).to_s)
            else
                raise StandardError.new("Override Currently Not Supported")
            end
            overrideObjectConfigDocument = self.getTransformInfoInterface().getObjectConfigInterface().toXmlDoc()
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Retrieved OverrideObjectConfig: " + ::Org::Allbinary::DataPackage::Tree::Dom::Document::XmlDocumentHelper.toString(overrideObjectConfigDocument), self, "view()")
            end
            transformFactory = ::Org::Allbinary::Logic::Visual::Transform::TransformFactory.getInstance()
            rootComponentInterface = transformFactory.getInstance(@abeClientInformation, rootTransformInfoInterface.getName(), rootTransformInfoInterface)
            transformTemplateInterface = rootComponentInterface
            componentInterface = transformFactory.getInstance(@abeClientInformation, transformTemplateInterface.getName(), rootComponentInterface.getTransformInfoInterface())
            transformInfoObjectConfigInterface = ::Org::Allbinary::Logic::Visual::Transform::Info::ObjectConfig::TransformInfoObjectConfigAndManipulatorFactory.getInstance().getInstance(@abeClientInformation, componentInterface.getTransformInfoInterface(), overrideObjectConfigDocument)
            componentInterface.getTransformInfoInterface().setObjectConfigInterface(transformInfoObjectConfigInterface)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Set OverrideObjectConfig: " + componentInterface.getTransformInfoInterface().getObjectConfigInterface().to_s, self, "view()")
            end
            return componentInterface.view()
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            raise e
        end
    end
    java_overload :view, 0
end

module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :XmlDocumentHelper, "org/allbinary/data/tree/dom/document/XmlDocumentHelper" unless const_defined?(:XmlDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; autoload :TransformFactory, "org/allbinary/logic/visual/transform/TransformFactory" unless const_defined?(:TransformFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; autoload :TransformInterface, "org/allbinary/logic/visual/transform/TransformInterface" unless const_defined?(:TransformInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :GeneratorTransformInfoData, "org/allbinary/logic/visual/transform/info/GeneratorTransformInfoData" unless const_defined?(:GeneratorTransformInfoData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :RootTransformInfoData, "org/allbinary/logic/visual/transform/info/RootTransformInfoData" unless const_defined?(:RootTransformInfoData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoHttp, "org/allbinary/logic/visual/transform/info/TransformInfoHttp" unless const_defined?(:TransformInfoHttp, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module ObjectConfig; autoload :TransformInfoObjectConfigAndManipulatorFactory, "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigAndManipulatorFactory" unless const_defined?(:TransformInfoObjectConfigAndManipulatorFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module ObjectConfig; autoload :TransformInfoObjectConfigInterface, "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigInterface" unless const_defined?(:TransformInfoObjectConfigInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Template; autoload :TransformTemplateInterface, "org/allbinary/logic/visual/transform/template/TransformTemplateInterface" unless const_defined?(:TransformTemplateInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end

