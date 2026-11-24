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
# package org.allbinary.game.ag.ai.tactical

require "java/lang/JavaOverload"
require "org/allbinary/game/ai/BasicAI"

module ::Org; module Allbinary; module Game; module Ag; module Ai; module Tactical

class BasicRandomAI < ::Org::Allbinary::Game::Ai::BasicAI
    attr_accessor :i_random, :inputProbability, :visitor, :keyArray, :myRandomFactory

    def jfields_org_allbinary_game_ag_ai_tactical_BasicRandomAI
        @i_random = 0
        @inputProbability = nil unless instance_variable_defined?(:@inputProbability)
        @visitor = nil unless instance_variable_defined?(:@visitor)
        @keyArray = [::Javax::Microedition::Lcdui::Canvas::UP, ::Javax::Microedition::Lcdui::Canvas::DOWN, ::Javax::Microedition::Lcdui::Canvas::LEFT, ::Javax::Microedition::Lcdui::Canvas::RIGHT, ::Javax::Microedition::Lcdui::Canvas::KEY_NUM1, ::Javax::Microedition::Lcdui::Canvas::KEY_NUM7, ::Javax::Microedition::Lcdui::Canvas::KEY_NUM9]
        @myRandomFactory = ::Org::Allbinary::Game::Rand::MyRandomFactory.getInstance()
    end
    

    def initialize(ownerLayerInterface, gameInput, inputProbability, visitor)
        super(ownerLayerInterface, gameInput)
        jfields_org_allbinary_game_ag_ai_tactical_BasicRandomAI
        @inputProbability = inputProbability
        @visitor = visitor
    end
    

    # throws Exception
    def processAI(allBinaryLayerManager)
        if @inputProbability.getTimeDelayHelper().isTime(::Org::Allbinary::TimePackage::GameTickTimeDelayHelperFactory.getInstance().startTime)
            @i_random = @myRandomFactory.getAbsoluteNextInt(@inputProbability.getMax())
            repeat = false
            repeatLikelyhoodIntegerArray = @inputProbability.getRepeatLikelyhoodIntegerArray()
            if self.getLastKey() != -1 && repeatLikelyhoodIntegerArray[self.getLastKey()].to_i >= @i_random
                repeat = true
            end
            if !repeat
                likelyhoodIntegerArray = @inputProbability.getLikelyhoodIntegerArray()
                @i_random = @myRandomFactory.getAbsoluteNextInt(@inputProbability.getMax())
                size = @keyArray.length
                likelyhoodIntegerKeyArray = nil
                (0...size).each do |index|
                    key = @keyArray[index]
                    likelyhoodIntegerKeyArray = likelyhoodIntegerArray[key]
                    if likelyhoodIntegerArray.length >= key && likelyhoodIntegerKeyArray[0] != nil
                        if @i_random >= likelyhoodIntegerKeyArray[0].to_i && @i_random < likelyhoodIntegerKeyArray[1].to_i
                            self.setLastKey(key)
                            break
                        end
                    end
                end
            end
            @visitor.visit(self)
        end
    end
    java_overload :processAI, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end
module ::Org; module Allbinary; module Game; module Ag; module Ai; autoload :InputProbability, "org/allbinary/game/ag/ai/InputProbability" unless const_defined?(:InputProbability, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameInput, "org/allbinary/game/input/GameInput" unless const_defined?(:GameInput, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Rand; autoload :MyRandomFactory, "org/allbinary/game/rand/MyRandomFactory" unless const_defined?(:MyRandomFactory, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Visitor; autoload :Visitor, "org/allbinary/logic/util/visitor/Visitor" unless const_defined?(:Visitor, false); end; end; end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :GameTickTimeDelayHelperFactory, "org/allbinary/time/GameTickTimeDelayHelperFactory" unless const_defined?(:GameTickTimeDelayHelperFactory, false); end; end; end

end; end; end; end; end; end

