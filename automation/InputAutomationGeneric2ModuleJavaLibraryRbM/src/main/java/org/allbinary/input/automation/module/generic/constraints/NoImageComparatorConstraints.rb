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
# package org.allbinary.input.automation.module.generic.constraints

require "java/lang/JavaOverload"
# require "java/awt/Color"
# require "java/awt/image/BufferedImage"
require "org/allbinary/input/automation/module/ImageComparatorConstraints"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Constraints

class NoImageComparatorConstraints < ::Org::Allbinary::Input::Automation::ModulePackage::ImageComparatorConstraints
    

    def initialize()
        super(1)
        self.setMaxNonMatchingPixelDeltas(2147483647)
    end
    

    def isColorAllowed(frame, point, color)
        return true
    end
    java_overload :isColorAllowed, 3
    

    def isImageValid(bufferedImage)
        return true
    end
    java_overload :isImageValid, 1
end

module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end

end; end; end; end; end; end; end

