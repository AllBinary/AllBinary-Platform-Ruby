# 
# AllBinary Open License Version 1 
# Copyright (c) 2026 AllBinary 
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
# package org.allbinary.graphics


module ::Org; module Allbinary; module Graphics

class OpenGLBitmapConfig
    attr_accessor :bitmapConfig

    def jfields_org_allbinary_graphics_OpenGLBitmapConfig
        @bitmapConfig = nil unless instance_variable_defined?(:@bitmapConfig)
    end
    

    def initialize(bitmapConfig)
        jfields_org_allbinary_graphics_OpenGLBitmapConfig
        @bitmapConfig = bitmapConfig
    end
end

module ::Android; module Graphics; autoload :Bitmap, "android/graphics/Bitmap" unless const_defined?(:Bitmap, false); end; end

end; end; end

