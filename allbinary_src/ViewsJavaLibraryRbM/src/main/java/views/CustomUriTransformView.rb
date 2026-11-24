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
# package views

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/logic/visual/transform/TransformInterface"

module ::Views

class CustomUriTransformView
    include ::Org::Allbinary::Logic::Visual::Transform::TransformInterface
    attr_accessor :logUtil, :commonStrings, :abeClientInformation, :transformInfoInterface, :transformDocumentInterface, :NO_TYPE

    def jfields_views_CustomUriTransformView
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @abeClientInformation = ::Org::Allbinary::Logic::System::Security::Licensing::ServiceClientInformationInterfaceFactory.getInstance()
        @transformInfoInterface = nil unless instance_variable_defined?(:@transformInfoInterface)
        @transformDocumentInterface = nil unless instance_variable_defined?(:@transformDocumentInterface)
        @NO_TYPE = 0
    end
    

    def initialize(transformInfoInterface)
        jfields_views_CustomUriTransformView
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("View Name: " + transformInfoInterface.getName(), self, @commonStrings.CONSTRUCTOR)
        end
        self.setTransformInfoInterface(transformInfoInterface)
        self.setTransformDocumentInterface(::Org::Allbinary::Logic::Visual::Transform::DataPackage::TransformDocumentFactory.getInstance())
    end
    

    def getTypeId()
        return @NO_TYPE
    end
    java_overload :getTypeId, 0
    

    def getTransformInfoInterface()
        return @transformInfoInterface
    end
    java_overload :getTransformInfoInterface, 0
    

    def setTransformInfoInterface(transformInfoInterface)
        @transformInfoInterface = transformInfoInterface
    end
    java_overload :setTransformInfoInterface, 1
    

    def getTransformDocumentInterface()
        return @transformDocumentInterface
    end
    java_overload :getTransformDocumentInterface, 0
    

    def setTransformDocumentInterface(transformDocumentInterface)
        @transformDocumentInterface = transformDocumentInterface
    end
    java_overload :setTransformDocumentInterface, 1
    

    def toXmlDoc()
        return @transformDocumentInterface.getDoc()
    end
    java_overload :toXmlDoc, 0
    

    # throws Exception
    def getDoc()
        document = self.getTransformInfoInterface().getDataDocument()
        dataNode = self.getTransformDocumentInterface().getDoc().importNode(document.getFirstChild(), true)
        if dataNode != nil
            self.getTransformDocumentInterface().getBaseNode().appendChild(dataNode)
        end
        return self.getTransformDocumentInterface().getDoc()
    end
    java_overload :getDoc, 0
    

    # throws Exception
    def view()
        begin
            success = ::Org::Allbinary::DataPackage::Tree::Dom::Document::XmlDocumentHelper.toString(self.getDoc())
            result = ::Org::Allbinary::Logic::Visual::Transform::TransformInfoCustomUriTransformer.new(@abeClientInformation, self.getTransformInfoInterface()).translate(success)
            return result
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            raise e
        end
    end
    java_overload :view, 0
end

module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :XmlDocumentHelper, "org/allbinary/data/tree/dom/document/XmlDocumentHelper" unless const_defined?(:XmlDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :ServiceClientInformationInterfaceFactory, "org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory" unless const_defined?(:ServiceClientInformationInterfaceFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; autoload :TransformInfoCustomUriTransformer, "org/allbinary/logic/visual/transform/TransformInfoCustomUriTransformer" unless const_defined?(:TransformInfoCustomUriTransformer, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module DataPackage; autoload :TransformDocumentFactory, "org/allbinary/logic/visual/transform/data/TransformDocumentFactory" unless const_defined?(:TransformDocumentFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module DataPackage; autoload :TransformDocumentInterface, "org/allbinary/logic/visual/transform/data/TransformDocumentInterface" unless const_defined?(:TransformDocumentInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end

