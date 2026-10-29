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
# package org.allbinary.animation.vector

require "org/allbinary/animation/AnimationInterfaceFactoryInterface"

class LineAnimationFactory
    include AnimationInterfaceFactoryInterface
    attr_accessor :basicColor

    def initialize_fields
        @basicColor = nil
    end
    

    def initialize(basicColor)
        initialize_fields
        @basicColor = basicColor
    end
    

    # throws Exception
    def getInstance(instanceId)
        return LineAnimation.new(@basicColor)
    end
    

    def setInitialScale(scaleProperties)
    end
end

require "org/allbinary/animation/Animation"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/media/ScaleProperties"
require "org/allbinary/animation/vector/LineAnimation"

