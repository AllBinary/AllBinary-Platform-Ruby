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


class GameEventHandlerUtil
    

    def self.removeAllListeners()
        UpGameKeyEventHandler.getInstance().removeAllListeners()
        DownGameKeyEventHandler.getInstance().removeAllListeners()
    end
end

require "org/allbinary/game/input/event/DownGameKeyEventHandler"
require "org/allbinary/game/input/event/UpGameKeyEventHandler"

