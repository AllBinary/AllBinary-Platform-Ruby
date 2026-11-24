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
# package org.allbinary.media.image

# require "java/awt/image/BufferedImage"
# require "java/io/File"

module ::Org; module Allbinary; module Media; module Image

class ImageProcessorInput
    attr_accessor :bufferedImageArray, :files

    def jfields_org_allbinary_media_image_ImageProcessorInput
        @bufferedImageArray = nil unless instance_variable_defined?(:@bufferedImageArray)
        @files = nil unless instance_variable_defined?(:@files)
    end
    

    def initialize(files, bufferedImageArray)
        super()
        jfields_org_allbinary_media_image_ImageProcessorInput
        @bufferedImageArray = bufferedImageArray
        @files = files
    end
    

    def getBufferedImageArray()
        return @bufferedImageArray
    end
    

    def getFiles()
        return @files
    end
end

end; end; end; end

