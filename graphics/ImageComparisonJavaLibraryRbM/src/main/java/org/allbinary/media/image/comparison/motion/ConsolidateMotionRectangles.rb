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
# require "java/awt/Rectangle"
require "org/allbinary/media/image/comparison/motion/MotionRectangles"

module ::Org; module Allbinary; module Media; module Image; module Comparison; module Motion

class ConsolidateMotionRectangles < MotionRectangles
    attr_accessor :logUtil

    def jfields_org_allbinary_media_image_comparison_motion_ConsolidateMotionRectangles
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize(motionRectangles)
        super(NAME, motionRectangles.getImageComparisonResult())
        jfields_org_allbinary_media_image_comparison_motion_ConsolidateMotionRectangles
        vector = motionRectangles.getVector()
        size = vector.size()
        (0...size).each do |index|
            motionRectangle = vector.get(index)
            vector.add(motionRectangle.clone())
        end
        self.consolidateMotionRectangles()
    end
    

    def consolidateMotionRectangles()
        vector = self.getVector()
        @logUtil.putF("Start - Size Before: " + (vector.size()).to_s, self, "consolidateMotionRectangleConstraints")
        removeVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        size = vector.size()
        (0...size).each do |index|
            motionRectangle = vector.get(index)
            (index + 1...vector.size()).each do |i|
                motionRectangle2 = vector.get(i)
                rectangle = motionRectangle.getRectangle()
                rectangle2 = motionRectangle2.getRectangle()
                x2 = rectangle.x + rectangle.width
                y2 = rectangle.y + rectangle.height
                rightX = rectangle2.x + rectangle2.width
                bottomY = rectangle2.y + rectangle2.height
                if rectangle.x <= rectangle2.x && rectangle.y <= rectangle2.y && x2 >= rightX && y2 >= bottomY
                    removeVector.add(motionRectangle2)
                end
            end
        end
        self.remove(removeVector)
    end
    java_overload :consolidateMotionRectangles, 0
    

    def remove(removeVector)
        vector = self.getVector()
        size = removeVector.size()
        (0...size).each do |index|
            vector.remove(removeVector.get(index))
        end
    end
    java_overload :remove, 1

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:NAME, "consolidatedMotionRectangles_")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ConsolidateMotionRectangles"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NAME].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
autoload :MotionRectangle, "org/allbinary/media/image/comparison/motion/MotionRectangle" unless const_defined?(:MotionRectangle, false)

begin
    ConsolidateMotionRectangles.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

