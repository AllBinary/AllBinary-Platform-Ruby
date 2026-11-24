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
# package org.allbinary.game.ag.ai.scroller

require "java/lang/JavaOverload"
require "org/allbinary/game/ag/ai/scroller/BasePatrolAI"

module ::Org; module Allbinary; module Game; module Ag; module Ai; module Scroller

class RandomPatrolAI < BasePatrolAI
    attr_accessor :changedDirection

    def jfields_org_allbinary_game_ag_ai_scroller_RandomPatrolAI
        @changedDirection = true
    end
    

    def initialize(hashtable, ownerLayerInterface, gameInput)
        super(hashtable, ownerLayerInterface, gameInput)
        jfields_org_allbinary_game_ag_ai_scroller_RandomPatrolAI
        self.updateRandomDistance()
    end
    

    def updateRandomDistance()
        @currentDistance = ::Org::Allbinary::Game::Rand::MyRandomFactory.getInstance().getAbsoluteNextInt(@maxDistance.to_i)
    end
    java_overload :updateRandomDistance, 0
    

    # throws Exception
    def processAI(allBinaryLayerManager)
        RandomPatrolAI.superclass.java_super_method(:update, 0).bind(self).call()
        RandomPatrolAI.superclass.java_super_method(:processKeyAI, 1).bind(self).call(@keyDirection)
        if @changedDirection
            RandomPatrolAI.superclass.java_super_method(:processKeyAI, 1).bind(self).call(::Javax::Microedition::Lcdui::Canvas::KEY_NUM1)
            self.updateRandomDistance()
            @changedDirection = false
        end
    end
    java_overload :processAI, 1
    

    def nextDirection()
        RandomPatrolAI.superclass.java_super_method(:nextDirection, 0).bind(self).call()
        @changedDirection = true
    end
    java_overload :nextDirection, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameInput, "org/allbinary/game/input/GameInput" unless const_defined?(:GameInput, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Rand; autoload :MyRandomFactory, "org/allbinary/game/rand/MyRandomFactory" unless const_defined?(:MyRandomFactory, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end

end; end; end; end; end; end

