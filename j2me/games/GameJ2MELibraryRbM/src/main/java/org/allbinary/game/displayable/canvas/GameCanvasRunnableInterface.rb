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

# require "javax/microedition/lcdui/CommandListener"
# require "javax/microedition/lcdui/ItemStateListener"
require "org/allbinary/game/state/GameStateCompositeInterface"
require "org/allbinary/graphics/paint/PaintableInterface"
require "org/allbinary/thread/RunnableInterface"

module GameCanvasRunnableInterface
    include RunnableInterface
    include PaintableInterface
    include ItemStateListener
    include GameStateCompositeInterface
    

    def getTitle()
        raise NotImplementedError
    end
    

    def isInitialized()
        raise NotImplementedError
    end
    

    def isPaused()
        raise NotImplementedError
    end
    

    def unPause()
        raise NotImplementedError
    end
    

    def pause()
        raise NotImplementedError
    end
    

    def isHighScoreSubmitted()
        raise NotImplementedError
    end
    

    # throws Exception
    def setHighScoreSubmitted(highScoreSubmitted)
        raise NotImplementedError
    end
    

    # throws Exception
    def processGameOver()
        raise NotImplementedError
    end
    

    def isGameOver()
        raise NotImplementedError
    end
    

    def initCommands(cmdListener)
        raise NotImplementedError
    end
    

    # throws Exception
    def getCurrentStateHashtable()
        raise NotImplementedError
    end
    

    # throws Exception
    def getLoadStateHashtable()
        raise NotImplementedError
    end
    

    # throws Exception
    def setLoadStateHashtable(hashtable)
        raise NotImplementedError
    end
    

    def getType()
        raise NotImplementedError
    end
end

require "org/allbinary/util/ABHashtable"

