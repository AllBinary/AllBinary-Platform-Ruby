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


class RandomRotationFactory
    attr_accessor :myRandomFactory, :angleFactory

    def initialize_fields
        @myRandomFactory = MyRandomFactory.getInstance()
        @angleFactory = AngleFactory.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return RandomRotationFactory.instance
    end
    

    # throws Exception
    def getInstanceList(vector, howMuch)
        graphicsPipe = BasicGraphicsPipeline.new(vector)
        graphicsPipe.createMatrix()
        graphicsPipe.rotateToAngle(@angleFactory.getAt(self.getNextRandomAngle(howMuch)))
        return graphicsPipe.getMatrix()
    end
    

    def getNextRandomAngle(howMuch)
        return @myRandomFactory.getNextInt(howMuch * 10)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/rand/MyRandomFactory"
require "org/allbinary/math/AngleFactory"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/graphics/pipeline/BasicGraphicsPipeline"

class RandomRotationFactory
    @@instance = RandomRotationFactory.new()
end

