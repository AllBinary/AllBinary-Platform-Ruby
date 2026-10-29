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
# require "javax/xml/transform/URIResolver"
# require "javax/xml/transform/stream/StreamSource"
require "org/allbinary/logic/visual/transform/info/CompositeTransformInfoInterface"

module BasicTransformerInterface
    include CompositeTransformInfoInterface
    

    def setInputStream(inputStream)
        raise NotImplementedError
    end
    

    def setURIResolver(uriResolver)
        raise NotImplementedError
    end
    

    def getStreamSource()
        raise NotImplementedError
    end
    

    def getInputStream()
        raise NotImplementedError
    end
    

    def getURIResolver()
        raise NotImplementedError
    end
    

    # throws Exception
    def translate(xmlDocumentStr)
        raise NotImplementedError
    end
end

