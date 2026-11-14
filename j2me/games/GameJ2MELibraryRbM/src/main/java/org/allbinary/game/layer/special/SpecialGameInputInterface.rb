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
# package org.allbinary.game.layer.special

require "org/allbinary/graphics/paint/PaintableInterface"

module SpecialGameInputInterface
    include PaintableInterface
    

    # throws Exception
    def up()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def down()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def right()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def left()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def strafeLeft()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def strafeRight()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def fire(layerManager, gameKeyEvent)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def special1(layerManager, gameKeyEvent)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def special2(layerManager, gameKeyEvent)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def special3(layerManager, gameKeyEvent)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def special4(layerManager, gameKeyEvent)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def special5(layerManager, gameKeyEvent)
        return super if defined?(super)
        raise NotImplementedError
    end
end

autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent"
autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager"

