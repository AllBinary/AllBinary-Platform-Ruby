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
require "views/HttpComponentView"

module ::Views; module Business; module Context

class HttpContextView < ::Views::HttpComponentView
    attr_accessor :logUtil, :commonStrings

    def jfields_views_business_context_HttpContextView
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        jfields_views_business_context_HttpContextView
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("View Name: " + transformInfoInterface.getName(), self, @commonStrings.CONSTRUCTOR)
        end
        self.setTransformDocumentInterface(::Org::Allbinary::Logic::Visual::Transform::DataPackage::TransformHttpRequestDocumentFactory.getInstance(self.getPageContext(), self.getWeblisketSession()))
    end
    

    # throws Exception
    def view()
        begin
            self.toXmlDoc()
            success = ::Org::Allbinary::DataPackage::Tree::Dom::Document::XmlDocumentHelper.toString(self.getDoc())
            result = ::Org::Allbinary::Logic::Visual::Transform::ContextTransformer.new(@abeClientInformation, self.getTransformInfoInterface()).translate(success)
            return result
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view", e)
            end
            raise e
        end
    end
    java_overload :view, 0
end

module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :XmlDocumentHelper, "org/allbinary/data/tree/dom/document/XmlDocumentHelper" unless const_defined?(:XmlDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; autoload :ContextTransformer, "org/allbinary/logic/visual/transform/ContextTransformer" unless const_defined?(:ContextTransformer, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module DataPackage; autoload :TransformHttpRequestDocumentFactory, "org/allbinary/logic/visual/transform/data/TransformHttpRequestDocumentFactory" unless const_defined?(:TransformHttpRequestDocumentFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end

