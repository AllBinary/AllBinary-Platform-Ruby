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
require "org/allbinary/logic/visual/transform/template/TransformTemplateInterface"
require "views/business/context/modules/storefront/HttpStoreComponentView"

module ::Views; module Business; module Context

class RootContextView < ::Views::Business::Context::Modules::Storefront::HttpStoreComponentView
    include ::Org::Allbinary::Logic::Visual::Transform::Template::TransformTemplateInterface
    attr_accessor :logUtil

    def jfields_views_business_context_RootContextView
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        jfields_views_business_context_RootContextView
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("View Name: " + transformInfoInterface.getName(), self, "RootContextView()")
        end
    end
    

    # throws Exception
    def view()
        begin
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("View Name: " + self.getTransformInfoInterface().getName(), self, "view()")
            end
            viewName = self.getName()
            componentInterface = ::Org::Allbinary::Logic::Visual::Transform::TransformFactory.getInstance().getInstance(@abeClientInformation, viewName, self.getTransformInfoInterface())
            return componentInterface.view()
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            raise e
        end
    end
    java_overload :view, 0
    

    # throws Exception
    def getName()
        begin
            objectConfig = ::Views::Business::Context::Modules::Storefront::Customizer::Template::ObjectConfig::NoTemplateTransformInfoObjectConfig.new(self.getTransformInfoInterface(), self.getTransformInfoInterface().getObjectConfigInterface().toXmlDoc())
            componentsVector = objectConfig.getTransforms()
            if componentsVector.size() == 0
                raise StandardError.new("Template View Not Set - No Components")
            end
            if componentsVector.size() > 1
                raise StandardError.new("To Many Root Template Views: " + (componentsVector.size()).to_s)
            end
            transformInfoInterface = componentsVector.get(0)
            viewName = transformInfoInterface.getName()
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Root Template With View Name: " + viewName, self, "getName()")
            end
            if ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(viewName)
                raise StandardError.new("Template View Not Set - No View Name")
            end
            return viewName
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getName()", e)
            end
            raise e
        end
    end
    java_overload :getName, 0
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; autoload :TransformFactory, "org/allbinary/logic/visual/transform/TransformFactory" unless const_defined?(:TransformFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; autoload :TransformInterface, "org/allbinary/logic/visual/transform/TransformInterface" unless const_defined?(:TransformInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfo, "org/allbinary/logic/visual/transform/info/TransformInfo" unless const_defined?(:TransformInfo, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Views; module Business; module Context; module Modules; module Storefront; module Customizer; module Template; module ObjectConfig; autoload :NoTemplateTransformInfoObjectConfig, "views/business/context/modules/storefront/customizer/template/objectConfig/NoTemplateTransformInfoObjectConfig" unless const_defined?(:NoTemplateTransformInfoObjectConfig, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end

