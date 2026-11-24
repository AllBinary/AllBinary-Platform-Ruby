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

class IntegerDimension
    attr_accessor :width, :height

    def jfields_org_allbinary_graphics_j2me_workarea_canvas_IntegerDimension
        @width = 0 unless instance_variable_defined?(:@width)
        @height = 0 unless instance_variable_defined?(:@height)
    end
    

    def initialize(width, height)
        jfields_org_allbinary_graphics_j2me_workarea_canvas_IntegerDimension
        self.setWidth(width)
        self.setHeight(height)
    end
    

    def getWidth()
        return @width
    end
    

    def setWidth(width)
        @width = width
    end
    

    def getHeight()
        return @height
    end
    

    def setHeight(height)
        @height = height
    end
end

end; end; end; end; end; end

