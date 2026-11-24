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
# package org.allbinary.game.score

require "java/lang/JavaOverload"
require "org/allbinary/game/score/HighScoresCanvasInputProcessorFactoryInterface"

module ::Org; module Allbinary; module Game; module Score

class HighScoresCanvasNoInputProcessorFactory
    include HighScoresCanvasInputProcessorFactoryInterface
    

    def getInstance(highScoresCanvas)
        return HighScoresCanvasInputProcessor.new(highScoresCanvas)
    end
    java_overload :getInstance, 1
end

module ::Org; module Allbinary; module Game; module Score; module Displayable; autoload :HighScoresCanvas, "org/allbinary/game/score/displayable/HighScoresCanvas" unless const_defined?(:HighScoresCanvas, false); end; end; end; end; end
autoload :HighScoresCanvasInputProcessor, "org/allbinary/game/score/HighScoresCanvasInputProcessor" unless const_defined?(:HighScoresCanvasInputProcessor, false)

end; end; end; end

