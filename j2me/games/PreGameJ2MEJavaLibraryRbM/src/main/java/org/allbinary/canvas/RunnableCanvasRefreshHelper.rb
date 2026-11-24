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

require "java/lang/JavaOverload"
require "org/allbinary/canvas/Processor"

module ::Org; module Allbinary; module Canvas

class RunnableCanvasRefreshHelper < Processor
    attr_accessor :runnableCanvas

    def jfields_org_allbinary_canvas_RunnableCanvasRefreshHelper
        @runnableCanvas = nil unless instance_variable_defined?(:@runnableCanvas)
    end
    

    def initialize(runnableCanvas)
        super()
        jfields_org_allbinary_canvas_RunnableCanvasRefreshHelper
        @runnableCanvas = runnableCanvas
    end
    

    def process()
        @runnableCanvas.repaint()
    end
    java_overload :process, 0
end

module ::Org; module Allbinary; module Graphics; module Displayable; autoload :MyCanvas, "org/allbinary/graphics/displayable/MyCanvas" unless const_defined?(:MyCanvas, false); end; end; end; end

end; end; end

