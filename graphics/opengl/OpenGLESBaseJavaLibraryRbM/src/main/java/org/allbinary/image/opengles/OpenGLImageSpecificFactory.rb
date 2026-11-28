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
# package org.allbinary.image.opengles


module ::Org; module Allbinary; module Image; module Opengles

class OpenGLImageSpecificFactory
    attr_accessor :imageFactory, :updating

    def jfields_org_allbinary_image_opengles_OpenGLImageSpecificFactory
        @imageFactory = OpenGLImageFactory::NULL_OPENGL_IMAGE_FACTORY
        @updating = false
    end

    def initialize
        jfields_org_allbinary_image_opengles_OpenGLImageSpecificFactory
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def setImageFactory(imageFactory)
        @imageFactory = imageFactory
        ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Selected Image Factory: ").append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(@imageFactory)).to_s, self, "setImageFactory")
    end
    

    def getImageFactory()
        return @imageFactory
    end

    def self.instance()
        OpenGLImageSpecificFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        OpenGLImageSpecificFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = OpenGLImageSpecificFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "OpenGLImageSpecificFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
autoload :OpenGLImageFactory, "org/allbinary/image/opengles/OpenGLImageFactory" unless const_defined?(:OpenGLImageFactory, false)

begin
    OpenGLImageSpecificFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

