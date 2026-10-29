# 
# AllBinary Open License Version 1 
# Copyright (c) 2006 AllBinary 
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
# package org.allbinary.game.view

require "org/allbinary/view/ViewPositionFactoryInterface"

class StaticTileLayerViewPositionFactory
    include ViewPositionFactoryInterface
    

    # throws Exception
    def getInstance()
        return StaticTileLayerIntoPositionViewPosition.new()
    end
end

require "org/allbinary/view/ViewPositionBase"
require "org/allbinary/game/view/StaticTileLayerIntoPositionViewPosition"

