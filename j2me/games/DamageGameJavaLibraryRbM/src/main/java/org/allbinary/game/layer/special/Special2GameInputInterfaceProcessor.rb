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
# package org.allbinary.game.layer.special

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/special/SpecialGameInputInterfaceProcessor"

module ::Org; module Allbinary; module Game; module Layer; module Special

class Special2GameInputInterfaceProcessor < SpecialGameInputInterfaceProcessor
    

    def initialize(collidableDestroyableDamageableLayer)
        super(collidableDestroyableDamageableLayer)
    end
    

    # throws Exception
    def processEvent(allbinaryLayerManager, gameKeyEvent)
        @specialGameInputInterface.special2(allbinaryLayerManager, gameKeyEvent)
    end
    java_overload :processEvent, 2
end

module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent" unless const_defined?(:GameKeyEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
autoload :SpecialGameInputInterface, "org/allbinary/game/layer/special/SpecialGameInputInterface" unless const_defined?(:SpecialGameInputInterface, false)

end; end; end; end; end

