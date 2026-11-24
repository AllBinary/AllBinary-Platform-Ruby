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
# package org.allbinary.logic.visual.transform

require "java/lang/JavaOverload"
# require "java/io/StringBufferInputStream"
# require "javax/xml/transform/URIResolver"
# require "javax/xml/transform/stream/StreamSource"
require "org/allbinary/logic/visual/transform/BasicTransformerInterface"

module ::Org; module Allbinary; module Logic; module Visual; module Transform

class AbTransformer
    include BasicTransformerInterface
    attr_accessor :logUtil, :commonStrings, :transformInfoInterface, :inputStream, :uriResolver

    def jfields_org_allbinary_logic_visual_transform_AbTransformer
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @transformInfoInterface = nil unless instance_variable_defined?(:@transformInfoInterface)
        @inputStream = nil unless instance_variable_defined?(:@inputStream)
        @uriResolver = nil unless instance_variable_defined?(:@uriResolver)
    end
    

    def initialize(transformInfoInterface)
        jfields_org_allbinary_logic_visual_transform_AbTransformer
        @transformInfoInterface = transformInfoInterface
    end
    

    def getTransformInfoInterface()
        return @transformInfoInterface
    end
    java_overload :getTransformInfoInterface, 0
    

    def setInputStream(inputStream)
        @inputStream = inputStream
    end
    java_overload :setInputStream, 1
    

    def setURIResolver(uriResolver)
        @uriResolver = uriResolver
    end
    java_overload :setURIResolver, 1
    

    def getInputStream()
        return @inputStream
    end
    java_overload :getInputStream, 0
    

    def getURIResolver()
        return @uriResolver
    end
    java_overload :getURIResolver, 0
    

    def getStreamSource()
        return StreamSource.new(self.getInputStream())
    end
    java_overload :getStreamSource, 0
    

    # throws Exception
    def translate(xmlDocumentStr)
        begin
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().XMLLOGGING)
                @logUtil.putF("xml: \n" + xmlDocumentStr, self, "translate(String xmlDocumentStr)")
            end
            if self.getURIResolver() == nil
                raise StandardError.new("No URIResolver")
            end
            result = ::Org::Allbinary::DataPackage::Tree::Dom::XslHelper.getInstance().translate(self.getURIResolver(), StreamSource.new(self.getInputStream()), StreamSource.new(StringBufferInputStream.new(xmlDocumentStr)))
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().XSLLOGGING)
                @logUtil.putF("translated xml: " + result, self, "translate(String xmlDocumentStr)")
            end
            transformInfoObjectConfigGeneratorInterface = ::Org::Allbinary::Logic::Visual::Transform::Info::ObjectConfig::Generator::TransformInfoObjectConfigGeneratorFactory.getInstance().getInstance(self.getTransformInfoInterface())
            return transformInfoObjectConfigGeneratorInterface.process(result)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put(@transformInfoInterface.log(), self, "translate(document)", e)
            end
            raise e
        end
    end
    java_overload :translate, 1
end

module ::Java; module Io; autoload :InputStream, "java/io/InputStream" unless const_defined?(:InputStream, false); end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :XslHelper, "org/allbinary/data/tree/dom/XslHelper" unless const_defined?(:XslHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module ObjectConfig; module Generator; autoload :TransformInfoObjectConfigGenerator, "org/allbinary/logic/visual/transform/info/objectConfig/generator/TransformInfoObjectConfigGenerator" unless const_defined?(:TransformInfoObjectConfigGenerator, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module ObjectConfig; module Generator; autoload :TransformInfoObjectConfigGeneratorFactory, "org/allbinary/logic/visual/transform/info/objectConfig/generator/TransformInfoObjectConfigGeneratorFactory" unless const_defined?(:TransformInfoObjectConfigGeneratorFactory, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end

