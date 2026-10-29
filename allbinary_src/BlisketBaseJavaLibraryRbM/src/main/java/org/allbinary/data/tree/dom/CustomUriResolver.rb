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

# require "javax/xml/transform/Source"
# require "javax/xml/transform/TransformerException"
# require "javax/xml/transform/URIResolver"
# require "javax/xml/transform/stream/StreamSource"

class CustomUriResolver
    include URIResolver
    attr_accessor :logUtil, :uriResolverStrings, :path, :basicURIResolver

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @uriResolverStrings = URIResolverStrings.getInstance()
        @path = nil
        @basicURIResolver = nil
    end
    

    def initialize(path, basicURIResolver)
        initialize_fields
        @path = path
        @basicURIResolver = basicURIResolver
    end
    

    # throws TransformerException
    def resolve(href, base)
        begin
            stringBuffer = StringMaker.new()
            stringBuffer.append(@path)
            stringBuffer.append(AbPathData.getInstance().SEPARATOR)
            stringBuffer.append(href)
            fileAbPath = AbFilePath.new(stringBuffer.to_s)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().XMLLOGGING)
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append(@uriResolverStrings.ATTEMPT)
                stringBuffer.append(href)
                stringBuffer.append(@uriResolverStrings.BASE)
                stringBuffer.append(base)
                stringBuffer.append(@uriResolverStrings.NEW_PATH)
                stringBuffer.append(fileAbPath.to_s)
                stringBuffer.append(@uriResolverStrings.NOTE)
                stringBuffer.append(FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH)
                stringBuffer.append(@uriResolverStrings.URL_GLOBAL)
                stringBuffer.append(@uriResolverStrings.REQUIRED_EXTENSION)
                stringBuffer.append(@basicURIResolver.getExtension())
            end
            return StreamSource.new(CryptFileReader.new(TransformInfoTemplateData.getInstance().UNCRYPTED_EXTENSION, TransformInfoTemplateData.getInstance().ENCRYPTED_EXTENSION).getInputStream(fileAbPath))
        rescue TransformerException => e
            raise e
        rescue StandardError => e
            raise TransformerException.new(e)
        end
    end
    

    def toString()
        return @path
    end
    alias_method :to_s, :toString
end

require "org/allbinary/globals/FREEBLISKET_PATH_GLOBALS"
require "org/allbinary/globals/URLGLOBALS"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/control/crypt/file/CryptFileReader"
require "org/allbinary/logic/io/path/AbFilePath"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/io/path/AbPathData"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/visual/transform/info/template/TransformInfoTemplateData"
require "org/allbinary/data/tree/dom/BasicUriResolver"
require "org/allbinary/data/tree/dom/URIResolverStrings"

