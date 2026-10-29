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
# package org.allbinary.image

# require "javax/microedition/lcdui/Image"

class IndexedAnimationToImageArrayUtil
    

    # throws Exception
    def self.getInstance(width, height, sequentialAnimationInterface)
        size = sequentialAnimationInterface.getAnimationSize()
        imageArray = Array.new(size, nil)
        (0...size).each do |index|
            sequentialAnimationInterface.setFrame(index)
            imageArray[index] = AnimationFrameToImageUtil.getInstance().getInstanceWH(width, height, sequentialAnimationInterface)
        end
        return imageArray
    end
end

require "org/allbinary/animation/IndexedAnimation"
require "org/allbinary/image/AnimationFrameToImageUtil"

