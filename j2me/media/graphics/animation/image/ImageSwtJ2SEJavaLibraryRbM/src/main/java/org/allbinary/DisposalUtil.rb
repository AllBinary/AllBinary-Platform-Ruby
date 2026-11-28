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
# package org.allbinary


module ::Org; module Allbinary

class DisposalUtil
    attr_accessor :commonStrings

    def jfields_org_allbinary_DisposalUtil
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
    end

    def initialize
        jfields_org_allbinary_DisposalUtil
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def disposeImage(image)
        if image == nil
            return
        end
        if image.isMutable()
            mutableImage = image
            self.disposeResource(mutableImage.getImage())
        else
        end
    end
    

    def disposeResource(resource)
        if !resource.isDisposed()
            puts(@commonStrings.CLOSE)
            resource.dispose()
        end
    end

    def self.instance()
        DisposalUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        DisposalUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = DisposalUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "DisposalUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Eclipse; module Swt; module Graphics; autoload :Resource, "org/eclipse/swt/graphics/Resource" unless const_defined?(:Resource, false); end; end; end; end
module ::Org; module Microemu; module Device; module Swt; autoload :SwtMutableImage, "org/microemu/device/swt/SwtMutableImage" unless const_defined?(:SwtMutableImage, false); end; end; end; end
require "java/lang/System"

begin
    DisposalUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end

