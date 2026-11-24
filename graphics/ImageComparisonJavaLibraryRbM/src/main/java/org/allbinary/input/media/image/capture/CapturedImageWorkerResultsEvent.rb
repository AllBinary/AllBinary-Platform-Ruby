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

require "java/lang/JavaOverload"
# require "java/awt/image/BufferedImage"
require "org/allbinary/logic/util/event/AllBinaryEventObject"

module ::Org; module Allbinary; module Input; module Media; module Image; module Capture

class CapturedImageWorkerResultsEvent < ::Org::Allbinary::Logic::Util::Event::AllBinaryEventObject
    attr_accessor :frame, :bufferedImage

    def jfields_org_allbinary_input_media_image_capture_CapturedImageWorkerResultsEvent
        @frame = nil unless instance_variable_defined?(:@frame)
        @bufferedImage = nil unless instance_variable_defined?(:@bufferedImage)
    end
    

    def initialize(anyType, frame, bufferedImage)
        super(anyType)
        jfields_org_allbinary_input_media_image_capture_CapturedImageWorkerResultsEvent
        @frame = frame
        self.setBufferedImage(bufferedImage)
    end
    

    def getBufferedImage()
        return @bufferedImage
    end
    java_overload :getBufferedImage, 0
    

    def setBufferedImage(bufferedImage)
        @bufferedImage = bufferedImage
    end
    java_overload :setBufferedImage, 1
    

    def getFrame()
        return @frame
    end
    java_overload :getFrame, 0
end

end; end; end; end; end; end

