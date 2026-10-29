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
# package org.allbinary.animation

require "org/allbinary/animation/VectorAnimationFactoryInterface"

class VectorAnimationFactory
    include VectorAnimationFactoryInterface
    

    def getInstance(points, basicColor)
        return VectorAnimation.new(points, basicColor, AnimationBehavior.getInstance())
    end
end

require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/animation/AnimationBehavior"
require "org/allbinary/animation/VectorAnimation"

