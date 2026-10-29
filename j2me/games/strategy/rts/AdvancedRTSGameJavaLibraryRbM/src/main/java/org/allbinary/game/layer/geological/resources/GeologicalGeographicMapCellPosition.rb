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
# package org.allbinary.game.layer.geological.resources

require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"

class GeologicalGeographicMapCellPosition < GeographicMapCellPosition
    attr_accessor :geologicalResource

    def initialize_fields
        @geologicalResource = nil
    end
    

    def initialize(column, row, columns, rows, width, height, geologicalResource)
        super(column, row, columns, rows, width, height)
        initialize_fields
        @geologicalResource = geologicalResource
    end
    

    def getGeologicalResource()
        return @geologicalResource
    end
end

require "org/allbinary/game/layer/geological/resources/GeologicalResource"

