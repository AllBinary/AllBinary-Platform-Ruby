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
# package org.allbinary.graphics.pipeline


class RandomTranslation
    

    # throws Exception
    def self.getInstance(vector, howMuch)
        myRandomFactory = MyRandomFactory.getInstance()
        x = -myRandomFactory.getNextInt(howMuch)
        y = myRandomFactory.getNextInt(howMuch)
        graphicsPipe = BasicGraphicsPipeline.new(vector)
        graphicsPipe.createMatrix()
        graphicsPipe.translate(x, y)
        return graphicsPipe.getMatrix()
    end
end

require "org/allbinary/game/rand/MyRandomFactory"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/graphics/pipeline/BasicGraphicsPipeline"

