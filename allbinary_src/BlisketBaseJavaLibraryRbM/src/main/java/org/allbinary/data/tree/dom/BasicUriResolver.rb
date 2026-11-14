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

class BasicUriResolver
    include URIResolver
    attr_accessor :logUtil, :uriResolverStrings, :extension

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @uriResolverStrings = URIResolverStrings.getInstance()
        @extension = nil
    end
    

    def initialize(extension)
        initialize_fields
        @extension = extension
    end
    

    def getExtension()
        return @extension
    end
    

    # throws TransformerException
    def resolve(href, base)
        begin
            stringBuffer = StringMaker.new()
            stringBuffer.append(URLGLOBALS.getMainPath())
            stringBuffer.append(FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH)
            stringBuffer.append(href)
            abPath = AbFilePath.new(stringBuffer.to_s)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().XMLLOGGING)
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append(@uriResolverStrings.ATTEMPT)
                stringBuffer.append(href)
                stringBuffer.append(@uriResolverStrings.BASE)
                stringBuffer.append(base)
                stringBuffer.append(@uriResolverStrings.NEW_PATH)
                stringBuffer.append(abPath.to_s)
                stringBuffer.append(@uriResolverStrings.NOTE)
                stringBuffer.append(FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH)
                stringBuffer.append(@uriResolverStrings.URL_GLOBAL)
                stringBuffer.append(@uriResolverStrings.REQUIRED_EXTENSION)
                stringBuffer.append(@extension)
                @logUtil.putF(stringBuffer.to_s, self, @uriResolverStrings.RESOLVE)
            end
            return StreamSource.new(CryptFileReader.new(TransformInfoTemplateData.getInstance().UNCRYPTED_EXTENSION, TransformInfoTemplateData.getInstance().ENCRYPTED_EXTENSION).getInputStream(abPath))
        rescue TransformerException => e
            raise e
        rescue StandardError => e
            raise TransformerException.new(e)
        end
    end
    

    def toString()
        begin
            stringBuffer = StringMaker.new()
            stringBuffer.append(URLGLOBALS.getMainPath())
            stringBuffer.append(FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH)
            stringBuffer.append(@uriResolverStrings.IMPORT_URL)
            return stringBuffer.to_s
        rescue StandardError => e
            return "BasicUriResolver - Does not work without webapp path should be changed"
        end
    end
    alias_method :to_s, :toString
end

autoload :FREEBLISKET_PATH_GLOBALS, "org/allbinary/globals/FREEBLISKET_PATH_GLOBALS"
autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CryptFileReader, "org/allbinary/logic/control/crypt/file/CryptFileReader"
autoload :AbFilePath, "org/allbinary/logic/io/path/AbFilePath"
autoload :AbPath, "org/allbinary/logic/io/path/AbPath"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :TransformInfoTemplateData, "org/allbinary/logic/visual/transform/info/template/TransformInfoTemplateData"
autoload :URIResolverStrings, "org/allbinary/data/tree/dom/URIResolverStrings"

