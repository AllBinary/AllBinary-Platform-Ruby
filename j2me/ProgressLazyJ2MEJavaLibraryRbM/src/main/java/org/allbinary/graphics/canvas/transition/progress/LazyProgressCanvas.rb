# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.graphics.canvas.transition.progress

require "java/lang/JavaOverload"
require "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas"

module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress

class LazyProgressCanvas < ProgressCanvas
    

    def initialize(title, backgroundBasicColor, foregroundBasicColor)
        super(title, backgroundBasicColor, foregroundBasicColor)
    end
    

    def start()
        LazyProgressCanvas.superclass.java_super_method(:start, 0).bind(self).call()
        @hasPainted = false
    end
    java_overload :start, 0
    

    def end_()
        begin
            @logUtil.putF(@commonStrings.START, self, @commonStrings.END_METHOD_NAME)
            self.endActual()
            @paintable = @GAUGE_PAINTABLE
            ::Org::Allbinary::Image::ImageCacheFactory.getInstance().runTask()
            ::Org::Allbinary::Image::ImageCacheFactory.getInstance().progressEnded()
        rescue StandardError => e
            @logUtil.putF(@commonStrings.EXCEPTION, self, @commonStrings.END_METHOD_NAME)
        end
    end
    java_overload :end_, 0
    

    def inGame()
        @inGameProcessor = ::Org::Allbinary::Canvas::Processor.getInstance()
    end
    java_overload :inGame, 0
    

    def endFromInitialLazyLoadingComplete()
        LazyProgressCanvas.superclass.java_super_method(:endFromInitialLazyLoadingComplete, 0).bind(self).call()
        @paintable = ::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance()
    end
    java_overload :endFromInitialLazyLoadingComplete, 0
    

    def endIfPaintedSinceStart()
        if @paintable == @GAUGE_PAINTABLE && @hasPainted
            self.endFromInitialLazyLoadingComplete()
        end
    end
    java_overload :endIfPaintedSinceStart, 0
end

module ::Org; module Allbinary; module Canvas; autoload :Processor, "org/allbinary/canvas/Processor" unless const_defined?(:Processor, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :NullPaintable, "org/allbinary/graphics/paint/NullPaintable" unless const_defined?(:NullPaintable, false); end; end; end; end
module ::Org; module Allbinary; module Image; autoload :ImageCacheFactory, "org/allbinary/image/ImageCacheFactory" unless const_defined?(:ImageCacheFactory, false); end; end; end

end; end; end; end; end; end

