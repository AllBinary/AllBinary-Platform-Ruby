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


module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Tools

class GraphicItemBuilder
    

    def initialize()
    end
    

    # throws Exception
    def self.getInstance(node)
        graphicItemName = node.getNodeName()
        if (graphicItemName <=> PointsDomUtil.getInstance().LINES) == 0
            return LinesGraphicItem.new(node)
        else
            raise StandardError.new("Graphic Item Does Not Exist: " + graphicItemName)
        end
    end
end

module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :GraphicItemInterface, "org/allbinary/graphics/j2me/workarea/tools/GraphicItemInterface" unless const_defined?(:GraphicItemInterface, false)
autoload :LinesGraphicItem, "org/allbinary/graphics/j2me/workarea/tools/LinesGraphicItem" unless const_defined?(:LinesGraphicItem, false)
autoload :PointsDomUtil, "org/allbinary/graphics/j2me/workarea/tools/PointsDomUtil" unless const_defined?(:PointsDomUtil, false)

end; end; end; end; end; end

