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
# package org.allbinary.game.terrain


class BasicTerrainInfo
    attr_accessor :angle

    def initialize_fields
        @angle = nil
    end
    

    def initialize(angle)
        initialize_fields
        @angle = angle
    end
    

    def getAngle()
        return @angle
    end
    

    def setAngle(angle)
        @angle = angle
    end
end

require "org/allbinary/math/Angle"
require "org/allbinary/math/AngleFactory"

class BasicTerrainInfo
    NULL_BASIC_TERRAIN_INFO = BasicTerrainInfo.new(AngleFactory.getInstance().NOT_ANGLE)
end

