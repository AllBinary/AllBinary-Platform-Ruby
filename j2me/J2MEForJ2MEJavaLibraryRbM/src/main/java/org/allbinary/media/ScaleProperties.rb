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
# package org.allbinary.media


module ::Org; module Allbinary; module Media

class ScaleProperties
    attr_accessor :scaleX, :scaleY, :scaleWidth, :scaleHeight, :shouldScale

    def jfields_org_allbinary_media_ScaleProperties
        @scaleX = 1.0
        @scaleY = 1.0
        @scaleWidth = 0 unless instance_variable_defined?(:@scaleWidth)
        @scaleHeight = 0 unless instance_variable_defined?(:@scaleHeight)
        @shouldScale = false unless instance_variable_defined?(:@shouldScale)
    end

    def initialize
        jfields_org_allbinary_media_ScaleProperties
    end
    

    def toString()
        return ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(::Org::Allbinary::StringPackage::CommonLabels.getInstance().COLON_SEP).appendboolean(@shouldScale).append("scaleX: ").appendfloat(@scaleX).append("scaleY: ").appendfloat(@scaleY).append("scaleWidth: ").appendint(@scaleWidth).append("scaleHeight: ").appendint(@scaleHeight).to_s
    end
    alias_method :to_s, :toString

    def self.instance()
        ScaleProperties.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ScaleProperties.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ScaleProperties.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ScaleProperties"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end

begin
    ScaleProperties.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

