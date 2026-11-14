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
# package org.allbinary.game.input.mapping


module InputMappingInterface
    

    # throws Exception
    def processInputMapping(gameKey, input)
        return super if defined?(super)
        raise NotImplementedError
    end
end

autoload :GameKey, "org/allbinary/game/input/GameKey"
autoload :Input, "org/allbinary/game/input/Input"

