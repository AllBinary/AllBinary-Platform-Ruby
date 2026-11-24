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


module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Canvas

class Grid
    attr_accessor :grid, :isGridOn, :isGridPossible, :zoom, :isChanged

    def jfields_org_allbinary_graphics_j2me_workarea_canvas_Grid
        @grid = nil unless instance_variable_defined?(:@grid)
        @isGridOn = true
        @isGridPossible = false
        @zoom = 3
        @isChanged = true
    end

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_graphics_j2me_workarea_canvas_Grid_0(*args)
        when 1 then jnew_org_allbinary_graphics_j2me_workarea_canvas_Grid_1(*args)
        else raise ArgumentError, "No constructor of Grid takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_graphics_j2me_workarea_canvas_Grid_0()
        jfields_org_allbinary_graphics_j2me_workarea_canvas_Grid
    end
    

    def jnew_org_allbinary_graphics_j2me_workarea_canvas_Grid_1(grid)
        jfields_org_allbinary_graphics_j2me_workarea_canvas_Grid
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

module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end

end; end; end; end; end; end

