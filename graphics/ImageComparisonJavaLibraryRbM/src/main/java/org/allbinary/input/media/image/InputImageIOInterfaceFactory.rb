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
# package org.allbinary.input.media.image


class InputImageIOInterfaceFactory
    

    def initialize()
    end
    

    # throws Exception
    def self.getInstance(imageType)
        if imageType == InputImageType::CAPTURE
            return CapturedImageInputOutput.new()
        elsif imageType == InputImageType::COMPARISON
            return ComparisonImageInputOutput.new()
        elsif imageType == InputImageType::MOTION
            return MotionRectanglesImageInputOutput.new()
        else
            raise StandardError.new("No ImageIOInterface for: " + imageType.to_s)
        end
    end
end

require "org/allbinary/input/media/image/capture/CapturedImageInputOutput"
require "org/allbinary/media/image/comparison/ComparisonImageInputOutput"
require "org/allbinary/media/image/comparison/motion/MotionRectanglesImageInputOutput"
require "org/allbinary/media/image/io/ImageIOInterface"
require "org/allbinary/input/media/image/InputImageType"

