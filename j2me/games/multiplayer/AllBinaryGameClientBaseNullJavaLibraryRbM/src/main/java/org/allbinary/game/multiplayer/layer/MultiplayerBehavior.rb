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
# package org.allbinary.game.multiplayer.layer


class MultiplayerBehavior
    

    def initialize(username)
    end
    

    def startTick()
    end
    

    def endTick()
    end
    

    def getApproximateElapsed()
        return 0
    end
end

require "org/allbinary/logic/string/StringUtil"

class MultiplayerBehavior
    NULL_MULTIPLAYER_BEHAVIOR = MultiplayerBehavior.new(StringUtil.getInstance().EMPTY_STRING)
end

