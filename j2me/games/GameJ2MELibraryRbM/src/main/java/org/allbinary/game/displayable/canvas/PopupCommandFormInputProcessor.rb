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
# package org.allbinary.game.displayable.canvas

require "java/lang/JavaOverload"
require "org/allbinary/game/displayable/canvas/CommandFormInputProcessor"

module ::Org; module Allbinary; module Game; module Displayable; module Canvas

class PopupCommandFormInputProcessor < CommandFormInputProcessor
    

    def initialize(gameKeyEventList, playerInputId, gameCanvas, form, popupMenuInputProcessor)
        super(gameKeyEventList, playerInputId, gameCanvas, form)
    end
    

    # throws Exception
    def processInput(key)
        return PopupCommandFormInputProcessor.superclass.java_super_method(:processInput, 1).bind(self).call(key)
    end
    java_overload :processInput, 1
    

    # throws Exception
    def processMotionInput(motionGestureEvent)
        PopupCommandFormInputProcessor.superclass.java_super_method(:processMotionInput, 1).bind(self).call(motionGestureEvent)
    end
    java_overload :processMotionInput, 1
end

module ::Org; module Allbinary; module Graphics; module Displayable; autoload :MyCanvas, "org/allbinary/graphics/displayable/MyCanvas" unless const_defined?(:MyCanvas, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; autoload :ScrollSelectionForm, "org/allbinary/graphics/form/ScrollSelectionForm" unless const_defined?(:ScrollSelectionForm, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Observer; autoload :MotionGestureEvent, "org/allbinary/input/motion/gesture/observer/MotionGestureEvent" unless const_defined?(:MotionGestureEvent, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
autoload :PopupMenuInputProcessor, "org/allbinary/game/displayable/canvas/PopupMenuInputProcessor" unless const_defined?(:PopupMenuInputProcessor, false)

end; end; end; end; end

