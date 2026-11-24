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
# package org.allbinary.graphics.j2me.workarea.tools

require "java/lang/JavaOverload"
require "org/allbinary/graphics/j2me/workarea/tools/GraphicsItemInterfaceFactoryInterface"

module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Tools

class SelectionToolFactory
    include GraphicsItemInterfaceFactoryInterface
    

    def getInstance(canvasJPanel)
        return SelectionTool.new(canvasJPanel)
    end
    java_overload :getInstance, 1
end

module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Canvas; autoload :CanvasJPanel, "org/allbinary/graphics/j2me/workarea/canvas/CanvasJPanel" unless const_defined?(:CanvasJPanel, false); end; end; end; end; end; end
autoload :GraphicItemInterface, "org/allbinary/graphics/j2me/workarea/tools/GraphicItemInterface" unless const_defined?(:GraphicItemInterface, false)
autoload :SelectionTool, "org/allbinary/graphics/j2me/workarea/tools/SelectionTool" unless const_defined?(:SelectionTool, false)

end; end; end; end; end; end

