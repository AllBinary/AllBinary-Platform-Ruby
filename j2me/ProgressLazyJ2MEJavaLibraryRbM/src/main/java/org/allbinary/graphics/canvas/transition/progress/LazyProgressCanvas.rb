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

require "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas"

class LazyProgressCanvas < ProgressCanvas
    

    def initialize(title, backgroundBasicColor, foregroundBasicColor)
        super(title, backgroundBasicColor, foregroundBasicColor)
    end
    

    def start()
        super()
        @hasPainted = false
    end
    

    def end_()
        begin
            @logUtil.putF(@commonStrings.START, self, @commonStrings.END_METHOD_NAME)
            self.endActual()
            @paintable = @GAUGE_PAINTABLE
            ImageCacheFactory.getInstance().runTask()
            ImageCacheFactory.getInstance().progressEnded()
        rescue StandardError => e
            @logUtil.putF(@commonStrings.EXCEPTION, self, @commonStrings.END_METHOD_NAME)
        end
    end
    

    def inGame()
        @inGameProcessor = Processor.getInstance()
    end
    

    def endFromInitialLazyLoadingComplete()
        super()
        @paintable = NullPaintable.getInstance()
    end
    

    def endIfPaintedSinceStart()
        if @paintable == @GAUGE_PAINTABLE && @hasPainted
            self.endFromInitialLazyLoadingComplete()
        end
    end
end

require "org/allbinary/canvas/Processor"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/paint/NullPaintable"
require "org/allbinary/image/ImageCacheFactory"

