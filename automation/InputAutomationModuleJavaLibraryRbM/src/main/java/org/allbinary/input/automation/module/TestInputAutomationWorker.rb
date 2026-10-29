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


class TestInputAutomationWorker
    attr_accessor :captureWorker, :imageComparisonWorker, :motionRectanglesWorker, :changedPixelsImageComparisonResultsWorker, :saveMotionRectanglesAsImagesWorker, :moveMouseToFirstMotionRectanglesResultsWorker

    def initialize_fields
        @captureWorker = nil
        @imageComparisonWorker = nil
        @motionRectanglesWorker = nil
        @changedPixelsImageComparisonResultsWorker = nil
        @saveMotionRectanglesAsImagesWorker = nil
        @moveMouseToFirstMotionRectanglesResultsWorker = nil
    end
    

    def initialize()
        initialize_fields
        @captureWorker = ScreenCaptureImagesWorker.new()
        @changedPixelsImageComparisonResultsWorker = SaveImageComparisonWorker.new()
        @saveMotionRectanglesAsImagesWorker = SaveMotionRectanglesResultsWorker.new()
        @moveMouseToFirstMotionRectanglesResultsWorker = TestInputForMotionRectanglesResultsWorker.new()
        @motionRectanglesWorker.addListenerInterface(@saveMotionRectanglesAsImagesWorker)
        @motionRectanglesWorker.addListenerInterface(@moveMouseToFirstMotionRectanglesResultsWorker)
        @imageComparisonWorker.addListenerInterface(@changedPixelsImageComparisonResultsWorker)
        @imageComparisonWorker.addListenerInterface(@motionRectanglesWorker)
        @captureWorker.addListenerInterface(@imageComparisonWorker)
    end
end

require "org/allbinary/input/media/image/capture/ScreenCaptureImagesWorker"
require "org/allbinary/media/image/comparison/ImageComparisonWorker"
require "org/allbinary/media/image/comparison/SaveImageComparisonWorker"
require "org/allbinary/media/image/comparison/motion/MotionRectanglesWorker"
require "org/allbinary/media/image/comparison/motion/SaveMotionRectanglesResultsWorker"
require "org/allbinary/media/image/comparison/motion/TestInputForMotionRectanglesResultsWorker"

