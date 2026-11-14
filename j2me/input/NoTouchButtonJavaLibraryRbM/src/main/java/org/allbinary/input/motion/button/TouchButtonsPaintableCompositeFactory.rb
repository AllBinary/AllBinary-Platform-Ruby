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
# package org.allbinary.input.motion.button


class TouchButtonsPaintableCompositeFactory
    

    def self.getInstance(inputMappingInterface, basicColor)
        return ProcessPaintable.new()
    end
end

autoload :InputMappingInterface, "org/allbinary/game/input/mapping/InputMappingInterface"
autoload :BasicColor, "org/allbinary/graphics/color/BasicColor"
autoload :ProcessPaintable, "org/allbinary/graphics/paint/ProcessPaintable"

