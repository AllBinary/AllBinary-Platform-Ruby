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

class ImageProcessorInput
    attr_accessor :bufferedImageArray, :files

    def initialize_fields
        @bufferedImageArray = nil
        @files = nil
    end
    

    def initialize(files, bufferedImageArray)
        super()
        initialize_fields
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

