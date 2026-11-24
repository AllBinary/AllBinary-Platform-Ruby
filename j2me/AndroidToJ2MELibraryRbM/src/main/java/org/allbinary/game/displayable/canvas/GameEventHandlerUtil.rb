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


module ::Org; module Allbinary; module Game; module Displayable; module Canvas

class GameEventHandlerUtil
    

    def self.removeAllListeners()
        ::Org::Allbinary::Input::Motion::Gesture::Observer::BasicMotionGesturesHandler.getInstance().removeAllListeners()
        ::Org::Allbinary::Game::Input::Event::GameKeyEventHandler.getInstance().removeAllListeners()
        ::Org::Allbinary::Android::Input::Motion::GameInputMotionEventProcessorFactory.getInstance().addListener()
    end
end

module ::Org; module Allbinary; module Android; module Input; module Motion; autoload :GameInputMotionEventProcessorFactory, "org/allbinary/android/input/motion/GameInputMotionEventProcessorFactory" unless const_defined?(:GameInputMotionEventProcessorFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEventHandler, "org/allbinary/game/input/event/GameKeyEventHandler" unless const_defined?(:GameKeyEventHandler, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Observer; autoload :BasicMotionGesturesHandler, "org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler" unless const_defined?(:BasicMotionGesturesHandler, false); end; end; end; end; end; end

end; end; end; end; end

