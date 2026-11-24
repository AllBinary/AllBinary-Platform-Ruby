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
# package views.business.context.modules.storefront.customizer.bodies.generic

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "views/business/context/modules/storefront/HttpStoreComponentView"

module ::Views; module Business; module Context; module Modules; module Storefront; module Customizer; module Bodies; module Generic

class GenericBodyCustomizerView < ::Views::Business::Context::Modules::Storefront::HttpStoreComponentView
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :logUtil, :body

    def jfields_views_business_context_modules_storefront_customizer_bodies_generic_GenericBodyCustomizerView
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @body = nil unless instance_variable_defined?(:@body)
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        jfields_views_business_context_modules_storefront_customizer_bodies_generic_GenericBodyCustomizerView
    end
    

    # throws Exception
    def addDomNodeInterfaces()
        self.addDomNodeInterface(@body)
        self.addDomNodeInterface(self)
    end
    java_overload :addDomNodeInterfaces, 0
    

    # throws Exception
    def toXmlNode(document)
        pageName = ::Org::Allbinary::Logic::Visual::Transform::Template::Util::TransformTemplateCustomizerUtil.getInstance().getPageNameHack(self.getTransformInfoInterface().getName(), self.getWeblisketSession().getStoreName())
        if ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(pageName)
            pageName = GenericBodyCustomizerView::NAME
        end
        return ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, ::Org::Allbinary::Business::Page::PageData.getInstance().NAME, pageName)
    end
    java_overload :toXmlNode, 1
    

    # throws Exception
    def view()
        begin
            self.addDomNodeInterfaces()
            success = ::Org::Allbinary::DataPackage::Tree::Dom::Document::XmlDocumentHelper.toString(self.getDoc())
            result = ::Org::Allbinary::Logic::Visual::Transform::StoreTransformer.new(@abeClientInformation, self.getTransformInfoInterface()).translate(success)
            return ::Org::Apache::Commons::Lang3::StringEscapeUtils.unescapeHtml3(result)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            raise e
        end
    end
    java_overload :view, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:NAME, "None")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GenericBodyCustomizerView"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NAME].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Business; module Page; autoload :PageData, "org/allbinary/business/page/PageData" unless const_defined?(:PageData, false); end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :XmlDocumentHelper, "org/allbinary/data/tree/dom/document/XmlDocumentHelper" unless const_defined?(:XmlDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; autoload :StoreTransformer, "org/allbinary/logic/visual/transform/StoreTransformer" unless const_defined?(:StoreTransformer, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Template; module Customizer; module Bodies; autoload :GenericBodyValidation, "org/allbinary/logic/visual/transform/template/customizer/bodies/GenericBodyValidation" unless const_defined?(:GenericBodyValidation, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Template; module Util; autoload :TransformTemplateCustomizerUtil, "org/allbinary/logic/visual/transform/template/util/TransformTemplateCustomizerUtil" unless const_defined?(:TransformTemplateCustomizerUtil, false); end; end; end; end; end; end; end
module ::Org; module Apache; module Commons; module Lang3; autoload :StringEscapeUtils, "org/apache/commons/lang3/StringEscapeUtils" unless const_defined?(:StringEscapeUtils, false); end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

begin
    GenericBodyCustomizerView.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end

