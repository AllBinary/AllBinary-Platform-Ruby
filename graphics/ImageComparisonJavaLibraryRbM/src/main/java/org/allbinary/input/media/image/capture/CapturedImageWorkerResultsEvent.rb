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
# package org.allbinary.input.media.image.capture

# require "java/awt/image/BufferedImage"
require "org/allbinary/logic/util/event/AllBinaryEventObject"

class CapturedImageWorkerResultsEvent < AllBinaryEventObject
    attr_accessor :frame, :bufferedImage

    def initialize_fields
        @frame = nil
        @bufferedImage = nil
    end
    

    def initialize(anyType, frame, bufferedImage)
        super(anyType)
        initialize_fields
        @frame = frame
        self.setBufferedImage(bufferedImage)
    end
    

    def getBufferedImage()
        return @bufferedImage
    end
    

    def setBufferedImage(bufferedImage)
        @bufferedImage = bufferedImage
    end
    

    def getFrame()
        return @frame
    end
end

