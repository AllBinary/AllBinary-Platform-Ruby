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

require "java/lang/JavaOverload"
require "org/allbinary/animation/NullRotationAnimation"

module ::Org; module Allbinary; module Animation

class NullRotationAnimation2 < NullRotationAnimation
    

    def initialize()
        super(::Org::Allbinary::MathPackage::AngleInfo.getInstance(::Org::Allbinary::MathPackage::AngleFactory.getInstance().QUARTER_TOTAL_ANGLE), ::Org::Allbinary::Util::CircularIndexUtil.createInstance(4), IndexedAnimationBehavior.new(1, 250))
    end
    

    def paintXY(graphics, x, y)
    end
    java_overload :paintXY, 3
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleFactory, "org/allbinary/math/AngleFactory" unless const_defined?(:AngleFactory, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleInfo, "org/allbinary/math/AngleInfo" unless const_defined?(:AngleInfo, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :CircularIndexUtil, "org/allbinary/util/CircularIndexUtil" unless const_defined?(:CircularIndexUtil, false); end; end; end
autoload :IndexedAnimationBehavior, "org/allbinary/animation/IndexedAnimationBehavior" unless const_defined?(:IndexedAnimationBehavior, false)

end; end; end

