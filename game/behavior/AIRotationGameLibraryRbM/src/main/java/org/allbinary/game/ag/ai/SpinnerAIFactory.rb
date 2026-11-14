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
# package org.allbinary.game.ag.ai

require "org/allbinary/game/ai/ArtificialIntelligenceInterfaceFactoryInterface"

class SpinnerAIFactory
    include ArtificialIntelligenceInterfaceFactoryInterface
    

    def getInstance(hashtable, ownerLayerInterface, gameInput)
        direction = [Canvas::LEFT]
        return SpinnerAI.new(direction, ownerLayerInterface, gameInput)
    end
end

autoload :Canvas, "javax/microedition/lcdui/Canvas"
autoload :ArtificialIntelligenceInterface, "org/allbinary/ai/ArtificialIntelligenceInterface"
autoload :GameInput, "org/allbinary/game/input/GameInput"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"
autoload :SpinnerAI, "org/allbinary/game/ag/ai/SpinnerAI"

