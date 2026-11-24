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


module ::Org; module Allbinary; module Input; module Media; module Image

class InputImageIOInterfaceFactory
    

    def initialize()
    end
    

    # throws Exception
    def self.getInstance(imageType)
        if imageType == InputImageType::CAPTURE
            return ::Org::Allbinary::Input::Media::Image::Capture::CapturedImageInputOutput.new()
        elsif imageType == InputImageType::COMPARISON
            return ::Org::Allbinary::Media::Image::Comparison::ComparisonImageInputOutput.new()
        elsif imageType == InputImageType::MOTION
            return ::Org::Allbinary::Media::Image::Comparison::Motion::MotionRectanglesImageInputOutput.new()
        else
            raise StandardError.new("No ImageIOInterface for: " + imageType.to_s)
        end
    end
end

module ::Org; module Allbinary; module Input; module Media; module Image; module Capture; autoload :CapturedImageInputOutput, "org/allbinary/input/media/image/capture/CapturedImageInputOutput" unless const_defined?(:CapturedImageInputOutput, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Comparison; autoload :ComparisonImageInputOutput, "org/allbinary/media/image/comparison/ComparisonImageInputOutput" unless const_defined?(:ComparisonImageInputOutput, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Comparison; module Motion; autoload :MotionRectanglesImageInputOutput, "org/allbinary/media/image/comparison/motion/MotionRectanglesImageInputOutput" unless const_defined?(:MotionRectanglesImageInputOutput, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Io; autoload :ImageIOInterface, "org/allbinary/media/image/io/ImageIOInterface" unless const_defined?(:ImageIOInterface, false); end; end; end; end; end
autoload :InputImageType, "org/allbinary/input/media/image/InputImageType" unless const_defined?(:InputImageType, false)

end; end; end; end; end

