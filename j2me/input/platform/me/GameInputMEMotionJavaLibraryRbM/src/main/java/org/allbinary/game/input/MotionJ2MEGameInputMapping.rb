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
# package org.allbinary.game.input

require "org/allbinary/game/input/J2MEGameInputMapping"

class MotionJ2MEGameInputMapping < J2MEGameInputMapping
    

    def getDefault()
        return MotionJ2MEDefaultGameInputMapping.new().getInputMapping()
    end
end

require "org/allbinary/game/input/mapping/InputToGameKeyMapping"
require "org/allbinary/game/input/MotionJ2MEDefaultGameInputMapping"

