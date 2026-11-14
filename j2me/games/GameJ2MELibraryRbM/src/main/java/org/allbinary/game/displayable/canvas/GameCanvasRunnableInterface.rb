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

require "javax/microedition/lcdui/ItemStateListener"
require "org/allbinary/game/state/GameStateCompositeInterface"
require "org/allbinary/graphics/paint/PaintableInterface"
require "org/allbinary/thread/RunnableInterface"

module GameCanvasRunnableInterface
    include RunnableInterface
    include PaintableInterface
    include ItemStateListener
    include GameStateCompositeInterface
    

    def getTitle()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def isInitialized()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def isPaused()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def unPause()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def pause()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def isHighScoreSubmitted()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def setHighScoreSubmitted(highScoreSubmitted)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def processGameOver()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def isGameOver()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def initCommands(cmdListener)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def getCurrentStateHashtable()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def getLoadStateHashtable()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def setLoadStateHashtable(hashtable)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getType()
        return super if defined?(super)
        raise NotImplementedError
    end
end

autoload :CommandListener, "javax/microedition/lcdui/CommandListener"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"

