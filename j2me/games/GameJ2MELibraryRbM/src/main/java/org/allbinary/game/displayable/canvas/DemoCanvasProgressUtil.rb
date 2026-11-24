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
# package org.allbinary.game.displayable.canvas


module ::Org; module Allbinary; module Game; module Displayable; module Canvas

class DemoCanvasProgressUtil
    

    def self.showProgress(demoCanvas)
        DemoCanvasProgressUtil.showProgressOptionallyInTheBackground(demoCanvas, false)
    end
    

    def self.showProgressOptionallyInTheBackground(demoCanvas, background)
        progressCanvas = ::Org::Allbinary::Graphics::Canvas::Transition::Progress::ProgressCanvasFactory.getInstance()
        progressCanvas.startBackground(background)
        paintableArray = Array.new(2, nil)
        paintableArray[0] = progressCanvas
        paintableArray[1] = demoCanvas.getDefaultPaintableInterface()
        demoCanvas.setDefaultPaintableInterface(::Org::Allbinary::Graphics::Paint::PaintableComposite.new(paintableArray))
        demoCanvas.setPaintableInterface(demoCanvas.getDefaultPaintableInterface())
    end
end

module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress; autoload :ProgressCanvas, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas" unless const_defined?(:ProgressCanvas, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress; autoload :ProgressCanvasFactory, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" unless const_defined?(:ProgressCanvasFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :PaintableComposite, "org/allbinary/graphics/paint/PaintableComposite" unless const_defined?(:PaintableComposite, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :PaintableInterface, "org/allbinary/graphics/paint/PaintableInterface" unless const_defined?(:PaintableInterface, false); end; end; end; end
autoload :DemoCanvas, "org/allbinary/game/displayable/canvas/DemoCanvas" unless const_defined?(:DemoCanvas, false)

end; end; end; end; end

