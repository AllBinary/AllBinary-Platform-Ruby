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
# package org.allbinary.graphics.j2me.workarea.canvas


class Grid
    attr_accessor :grid, :isGridOn, :isGridPossible, :zoom, :isChanged

    def initialize_fields
        @grid = nil
        @isGridOn = true
        @isGridPossible = false
        @zoom = 3
        @isChanged = true
    end

    def initialize(*args)
        case args.length
        when 0 then constructor0(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor0()
        initialize_fields
    end
    

    def constructor1(grid)
        initialize_fields
        @grid = grid.grid
        self.showGrid(grid.isGridOn)
        @isGridPossible = grid.isGridPossible
        self.setZoom(grid.getZoom())
    end
    

    def isGridOn()
        return @isGridOn
    end
    

    def isGridPossible()
        return @isGridPossible
    end
    

    def getGrid()
        return @grid
    end
    

    def getZoom()
        return @zoom
    end
    

    def showGrid(value)
        @isGridOn = value
    end
    

    def setZoom(zoom)
        @zoom = zoom
        if @zoom < 1
            zoom = 1
        end
        @isChanged = true
    end
end

require "org/allbinary/graphics/GPoint"

