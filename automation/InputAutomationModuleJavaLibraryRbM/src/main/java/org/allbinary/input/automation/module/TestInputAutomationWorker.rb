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
# package org.allbinary.input.automation.module


module ::Org; module Allbinary; module Input; module Automation; module ModulePackage

class TestInputAutomationWorker
    attr_accessor :captureWorker, :imageComparisonWorker, :motionRectanglesWorker, :changedPixelsImageComparisonResultsWorker, :saveMotionRectanglesAsImagesWorker, :moveMouseToFirstMotionRectanglesResultsWorker

    def jfields_org_allbinary_input_automation_module_TestInputAutomationWorker
        @captureWorker = nil unless instance_variable_defined?(:@captureWorker)
        @imageComparisonWorker = nil unless instance_variable_defined?(:@imageComparisonWorker)
        @motionRectanglesWorker = nil unless instance_variable_defined?(:@motionRectanglesWorker)
        @changedPixelsImageComparisonResultsWorker = nil unless instance_variable_defined?(:@changedPixelsImageComparisonResultsWorker)
        @saveMotionRectanglesAsImagesWorker = nil unless instance_variable_defined?(:@saveMotionRectanglesAsImagesWorker)
        @moveMouseToFirstMotionRectanglesResultsWorker = nil unless instance_variable_defined?(:@moveMouseToFirstMotionRectanglesResultsWorker)
    end
    

    def initialize()
        jfields_org_allbinary_input_automation_module_TestInputAutomationWorker
        @captureWorker = ::Org::Allbinary::Input::Media::Image::Capture::ScreenCaptureImagesWorker.new()
        @changedPixelsImageComparisonResultsWorker = ::Org::Allbinary::Media::Image::Comparison::SaveImageComparisonWorker.new()
        @saveMotionRectanglesAsImagesWorker = ::Org::Allbinary::Media::Image::Comparison::Motion::SaveMotionRectanglesResultsWorker.new()
        @moveMouseToFirstMotionRectanglesResultsWorker = ::Org::Allbinary::Media::Image::Comparison::Motion::TestInputForMotionRectanglesResultsWorker.new()
        @motionRectanglesWorker.addListenerInterface(@saveMotionRectanglesAsImagesWorker)
        @motionRectanglesWorker.addListenerInterface(@moveMouseToFirstMotionRectanglesResultsWorker)
        @imageComparisonWorker.addListenerInterface(@changedPixelsImageComparisonResultsWorker)
        @imageComparisonWorker.addListenerInterface(@motionRectanglesWorker)
        @captureWorker.addListenerInterface(@imageComparisonWorker)
    end
end

module ::Org; module Allbinary; module Input; module Media; module Image; module Capture; autoload :ScreenCaptureImagesWorker, "org/allbinary/input/media/image/capture/ScreenCaptureImagesWorker" unless const_defined?(:ScreenCaptureImagesWorker, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Comparison; autoload :ImageComparisonWorker, "org/allbinary/media/image/comparison/ImageComparisonWorker" unless const_defined?(:ImageComparisonWorker, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Comparison; autoload :SaveImageComparisonWorker, "org/allbinary/media/image/comparison/SaveImageComparisonWorker" unless const_defined?(:SaveImageComparisonWorker, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Comparison; module Motion; autoload :MotionRectanglesWorker, "org/allbinary/media/image/comparison/motion/MotionRectanglesWorker" unless const_defined?(:MotionRectanglesWorker, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Comparison; module Motion; autoload :SaveMotionRectanglesResultsWorker, "org/allbinary/media/image/comparison/motion/SaveMotionRectanglesResultsWorker" unless const_defined?(:SaveMotionRectanglesResultsWorker, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Comparison; module Motion; autoload :TestInputForMotionRectanglesResultsWorker, "org/allbinary/media/image/comparison/motion/TestInputForMotionRectanglesResultsWorker" unless const_defined?(:TestInputForMotionRectanglesResultsWorker, false); end; end; end; end; end; end

end; end; end; end; end

