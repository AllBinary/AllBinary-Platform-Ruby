# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.media.image


module ::Org; module Allbinary; module Media; module Image

class ImageSwtUtil
    

    def self.getInstance()
        return @@instance
    end

    def self.instance()
        ImageSwtUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ImageSwtUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ImageSwtUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ImageSwtUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Eclipse; module Swt; module Graphics; autoload :Color, "org/eclipse/swt/graphics/Color" unless const_defined?(:Color, false); end; end; end; end
module ::Org; module Eclipse; module Swt; module Graphics; autoload :RGB, "org/eclipse/swt/graphics/RGB" unless const_defined?(:RGB, false); end; end; end; end
module ::Org; module Microemu; module App; autoload :BareMain, "org/microemu/app/BareMain" unless const_defined?(:BareMain, false); end; end; end

begin
    ImageSwtUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

