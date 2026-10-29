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

# require "javax/microedition/lcdui/Image"

class DisposalUtil
    attr_accessor :commonStrings

    def initialize_fields
        @commonStrings = CommonStrings.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return DisposalUtil.instance
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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/string/CommonStrings"
require "org/eclipse/swt/graphics/Resource"
require "org/microemu/device/swt/SwtMutableImage"
require "java/lang/System"

class DisposalUtil
    @@instance = DisposalUtil.new()
end

