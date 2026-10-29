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

# require "java/io/InputStream"
# require "java/io/StringBufferInputStream"
# require "javax/xml/transform/URIResolver"
# require "javax/xml/transform/stream/StreamSource"
require "org/allbinary/logic/visual/transform/BasicTransformerInterface"

class AbTransformer
    include BasicTransformerInterface
    attr_accessor :logUtil, :commonStrings, :transformInfoInterface, :inputStream, :uriResolver

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @transformInfoInterface = nil
        @inputStream = nil
        @uriResolver = nil
    end
    

    def initialize(transformInfoInterface)
        initialize_fields
        @transformInfoInterface = transformInfoInterface
    end
    

    def getTransformInfoInterface()
        return @transformInfoInterface
    end
    

    def setInputStream(inputStream)
        @inputStream = inputStream
    end
    

    def setURIResolver(uriResolver)
        @uriResolver = uriResolver
    end
    

    def getInputStream()
        return @inputStream
    end
    

    def getURIResolver()
        return @uriResolver
    end
    

    def getStreamSource()
        return StreamSource.new(self.getInputStream())
    end
    

    # throws Exception
    def translate(xmlDocumentStr)
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().XMLLOGGING)
                @logUtil.putF("xml: \n" + xmlDocumentStr, self, "translate(String xmlDocumentStr)")
            end
            if self.getURIResolver() == nil
                raise StandardError.new("No URIResolver")
            end
            result = XslHelper.getInstance().translate(self.getURIResolver(), StreamSource.new(self.getInputStream()), StreamSource.new(StringBufferInputStream.new(xmlDocumentStr)))
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().XSLLOGGING)
                @logUtil.putF("translated xml: " + result, self, "translate(String xmlDocumentStr)")
            end
            transformInfoObjectConfigGeneratorInterface = TransformInfoObjectConfigGeneratorFactory.getInstance().getInstance(self.getTransformInfoInterface())
            return transformInfoObjectConfigGeneratorInterface.process(result)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put(@transformInfoInterface.log(), self, "translate(document)", e)
            end
            raise e
        end
    end
end

require "org/allbinary/data/tree/dom/XslHelper"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/allbinary/logic/visual/transform/info/objectConfig/generator/TransformInfoObjectConfigGenerator"
require "org/allbinary/logic/visual/transform/info/objectConfig/generator/TransformInfoObjectConfigGeneratorFactory"
require "org/allbinary/string/CommonStrings"

