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
# package org.allbinary.canvas

require "org/allbinary/canvas/Processor"

class RunnableCanvasRefreshHelper < Processor
    attr_accessor :runnableCanvas

    def initialize_fields
        @runnableCanvas = nil
    end
    

    def initialize(runnableCanvas)
        super()
        initialize_fields
        @runnableCanvas = runnableCanvas
    end
    

    def process()
        @runnableCanvas.repaint()
    end
end

require "org/allbinary/graphics/displayable/MyCanvas"

