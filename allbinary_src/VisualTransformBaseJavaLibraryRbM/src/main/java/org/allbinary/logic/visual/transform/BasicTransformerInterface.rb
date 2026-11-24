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
# require "javax/xml/transform/URIResolver"
# require "javax/xml/transform/stream/StreamSource"
require "org/allbinary/logic/visual/transform/info/CompositeTransformInfoInterface"

module ::Org; module Allbinary; module Logic; module Visual; module Transform

module BasicTransformerInterface
    include ::Org::Allbinary::Logic::Visual::Transform::Info::CompositeTransformInfoInterface
    

    def setInputStream(inputStream)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setInputStream, 1
    

    def setURIResolver(uriResolver)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setURIResolver, 1
    

    def getStreamSource()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getStreamSource, 0
    

    def getInputStream()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getInputStream, 0
    

    def getURIResolver()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getURIResolver, 0
    

    # throws Exception
    def translate(xmlDocumentStr)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :translate, 1
end

module ::Java; module Io; autoload :InputStream, "java/io/InputStream" unless const_defined?(:InputStream, false); end; end

end; end; end; end; end

