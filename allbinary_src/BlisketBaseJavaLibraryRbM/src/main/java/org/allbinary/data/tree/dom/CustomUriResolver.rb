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
# package org.allbinary.data.tree.dom

require "java/lang/JavaOverload"
# require "javax/xml/transform/Source"
# require "javax/xml/transform/TransformerException"
# require "javax/xml/transform/URIResolver"
# require "javax/xml/transform/stream/StreamSource"

module ::Org; module Allbinary; module DataPackage; module Tree; module Dom

class CustomUriResolver
    include URIResolver
    attr_accessor :logUtil, :uriResolverStrings, :path, :basicURIResolver

    def jfields_org_allbinary_data_tree_dom_CustomUriResolver
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @uriResolverStrings = URIResolverStrings.getInstance()
        @path = nil unless instance_variable_defined?(:@path)
        @basicURIResolver = nil unless instance_variable_defined?(:@basicURIResolver)
    end
    

    def initialize(path, basicURIResolver)
        jfields_org_allbinary_data_tree_dom_CustomUriResolver
        @path = path
        @basicURIResolver = basicURIResolver
    end
    

    # throws TransformerException
    def resolve(href, base)
        begin
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append(@path)
            stringBuffer.append(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR)
            stringBuffer.append(href)
            fileAbPath = ::Org::Allbinary::Logic::Io::Path::AbFilePath.new(stringBuffer.to_s)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().XMLLOGGING)
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append(@uriResolverStrings.ATTEMPT)
                stringBuffer.append(href)
                stringBuffer.append(@uriResolverStrings.BASE)
                stringBuffer.append(base)
                stringBuffer.append(@uriResolverStrings.NEW_PATH)
                stringBuffer.append(fileAbPath.to_s)
                stringBuffer.append(@uriResolverStrings.NOTE)
                stringBuffer.append(::Org::Allbinary::Globals::FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH)
                stringBuffer.append(@uriResolverStrings.URL_GLOBAL)
                stringBuffer.append(@uriResolverStrings.REQUIRED_EXTENSION)
                stringBuffer.append(@basicURIResolver.getExtension())
            end
            return StreamSource.new(::Org::Allbinary::Logic::ControlPackage::Crypt::FilePackage::CryptFileReader.new(::Org::Allbinary::Logic::Visual::Transform::Info::Template::TransformInfoTemplateData.getInstance().UNCRYPTED_EXTENSION, ::Org::Allbinary::Logic::Visual::Transform::Info::Template::TransformInfoTemplateData.getInstance().ENCRYPTED_EXTENSION).getInputStream(fileAbPath))
        rescue TransformerException => e
            raise e
        rescue StandardError => e
            raise TransformerException.new(e)
        end
    end
    java_overload :resolve, 2
    

    def toString()
        return @path
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Globals; autoload :FREEBLISKET_PATH_GLOBALS, "org/allbinary/globals/FREEBLISKET_PATH_GLOBALS" unless const_defined?(:FREEBLISKET_PATH_GLOBALS, false); end; end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Crypt; module FilePackage; autoload :CryptFileReader, "org/allbinary/logic/control/crypt/file/CryptFileReader" unless const_defined?(:CryptFileReader, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbFilePath, "org/allbinary/logic/io/path/AbFilePath" unless const_defined?(:AbFilePath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module Template; autoload :TransformInfoTemplateData, "org/allbinary/logic/visual/transform/info/template/TransformInfoTemplateData" unless const_defined?(:TransformInfoTemplateData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :BasicUriResolver, "org/allbinary/data/tree/dom/BasicUriResolver" unless const_defined?(:BasicUriResolver, false)
autoload :URIResolverStrings, "org/allbinary/data/tree/dom/URIResolverStrings" unless const_defined?(:URIResolverStrings, false)

end; end; end; end; end

