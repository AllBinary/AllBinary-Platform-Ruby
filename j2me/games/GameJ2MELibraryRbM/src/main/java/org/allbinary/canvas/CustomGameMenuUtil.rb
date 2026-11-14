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
# package org.allbinary.canvas


class CustomGameMenuUtil
    

    def self.add(canvas)
        gameCommandsFactory = GameCommandsFactory.getInstance()
        if AppletUtil.isAppletLoader(canvas)
        elsif J2MEUtil.isHTML()
        else
            canvas.addCommand(gameCommandsFactory.EXIT_COMMAND)
        end
    end
end

autoload :AppletUtil, "org/allbinary/AppletUtil"
autoload :J2MEUtil, "org/allbinary/J2MEUtil"
autoload :GameCommandsFactory, "org/allbinary/game/commands/GameCommandsFactory"
autoload :MyCanvas, "org/allbinary/graphics/displayable/MyCanvas"

