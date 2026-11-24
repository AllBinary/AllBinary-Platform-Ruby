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
# package org.allbinary.media.image.comparison.motion

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/event/BasicEventListenerInterface"

module ::Org; module Allbinary; module Media; module Image; module Comparison; module Motion

module MotionRectanglesResultsListener
    include ::Org::Allbinary::Logic::Util::Event::BasicEventListenerInterface
    

    def onMotionRectanglesImageComparisonResultsEvent(motionRectanglesImageComparisonResultsEvent)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :onMotionRectanglesImageComparisonResultsEvent, 1
end

autoload :MotionRectanglesResultsEvent, "org/allbinary/media/image/comparison/motion/MotionRectanglesResultsEvent" unless const_defined?(:MotionRectanglesResultsEvent, false)

end; end; end; end; end; end

