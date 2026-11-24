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
# package org.allbinary.game.layer

require "java/lang/JavaOverload"
require "org/allbinary/graphics/paint/Paintable"

module ::Org; module Allbinary; module Game; module Layer

class PaintableLayerComposite < ::Org::Allbinary::Graphics::Paint::Paintable
    attr_accessor :paintableArray

    def jfields_org_allbinary_game_layer_PaintableLayerComposite
        @paintableArray = nil unless instance_variable_defined?(:@paintableArray)
    end
    

    def initialize(paintableArray)
        super()
        jfields_org_allbinary_game_layer_PaintableLayerComposite
        @paintableArray = paintableArray
    end
    

    def paint(graphics)
        index = @paintableArray.length
        while (index -= 1) >= 0
            @paintableArray[index].paint(graphics)
        end
    end
    java_overload :paint, 1
    

    def paintThreed(graphics)
        paintableInterface = nil
        index = @paintableArray.length
        while (index -= 1) >= 0
            paintableInterface = @paintableArray[index]
            paintableInterface.paintThreed(graphics)
        end
    end
    java_overload :paintThreed, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :PaintableInterface, "org/allbinary/graphics/paint/PaintableInterface" unless const_defined?(:PaintableInterface, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :Layer, "org/allbinary/layer/Layer" unless const_defined?(:Layer, false); end; end; end

end; end; end; end

