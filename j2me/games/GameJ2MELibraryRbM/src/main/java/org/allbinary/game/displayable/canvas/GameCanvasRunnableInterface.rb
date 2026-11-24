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
require "javax/microedition/lcdui/ItemStateListener"
require "org/allbinary/game/state/GameStateCompositeInterface"
require "org/allbinary/graphics/paint/PaintableInterface"
require "org/allbinary/thread/RunnableInterface"

module ::Org; module Allbinary; module Game; module Displayable; module Canvas

module GameCanvasRunnableInterface
    include ::Org::Allbinary::ThreadPackage::RunnableInterface
    include ::Org::Allbinary::Graphics::Paint::PaintableInterface
    include ::Javax::Microedition::Lcdui::ItemStateListener
    include ::Org::Allbinary::Game::State::GameStateCompositeInterface
    

    def getTitle()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getTitle, 0
    

    def isInitialized()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :isInitialized, 0
    

    def isPaused()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :isPaused, 0
    

    def unPause()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :unPause, 0
    

    def pause()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :pause, 0
    

    def isHighScoreSubmitted()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :isHighScoreSubmitted, 0
    

    # throws Exception
    def setHighScoreSubmitted(highScoreSubmitted)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setHighScoreSubmitted, 1
    

    # throws Exception
    def processGameOver()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :processGameOver, 0
    

    def isGameOver()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :isGameOver, 0
    

    def initCommands(cmdListener)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :initCommands, 1
    

    # throws Exception
    def getCurrentStateHashtable()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getCurrentStateHashtable, 0
    

    # throws Exception
    def getLoadStateHashtable()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getLoadStateHashtable, 0
    

    # throws Exception
    def setLoadStateHashtable(hashtable)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setLoadStateHashtable, 1
    

    def getType()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getType, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :CommandListener, "javax/microedition/lcdui/CommandListener" unless const_defined?(:CommandListener, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end

end; end; end; end; end

