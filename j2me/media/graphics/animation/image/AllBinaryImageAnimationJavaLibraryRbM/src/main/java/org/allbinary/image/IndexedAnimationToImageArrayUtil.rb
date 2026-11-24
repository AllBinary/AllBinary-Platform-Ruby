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


module ::Org; module Allbinary; module Image

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

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :IndexedAnimation, "org/allbinary/animation/IndexedAnimation" unless const_defined?(:IndexedAnimation, false); end; end; end
autoload :AnimationFrameToImageUtil, "org/allbinary/image/AnimationFrameToImageUtil" unless const_defined?(:AnimationFrameToImageUtil, false)

end; end; end

