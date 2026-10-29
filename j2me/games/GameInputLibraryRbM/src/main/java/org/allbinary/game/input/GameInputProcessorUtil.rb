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


class GameInputProcessorUtil
    

    def self.init(inputProcessorArray)
        noInputProcessor = GameInputProcessor.getInstance()
        total = InputFactory.getInstance().MAX
        (0...total).each do |index|
            inputProcessorCanBeNull = inputProcessorArray[index]
            if inputProcessorCanBeNull == nil
                inputProcessorArray[index] = noInputProcessor
            end
        end
    end
end

require "org/allbinary/game/input/GameInputProcessor"
require "org/allbinary/game/input/InputFactory"

