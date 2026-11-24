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
# package org.allbinary.game.input

require "java/lang/JavaOverload"
require "org/allbinary/game/input/ScrollMapGameInputProcessor"

module ::Org; module Allbinary; module Game; module Input

class ScrollMapDownGameInputProcessor < ScrollMapGameInputProcessor
    

    def initialize(scrollMapPlayerGameInput)
        super(scrollMapPlayerGameInput)
    end
    

    # throws Exception
    def processEvent(allbinaryLayerManager, gameKeyEvent)
        @scrollMapPlayerGameInput.down()
    end
    java_overload :processEvent, 2
end

module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent" unless const_defined?(:GameKeyEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
autoload :ScrollMapPlayerGameInput, "org/allbinary/game/input/ScrollMapPlayerGameInput" unless const_defined?(:ScrollMapPlayerGameInput, false)

end; end; end; end

