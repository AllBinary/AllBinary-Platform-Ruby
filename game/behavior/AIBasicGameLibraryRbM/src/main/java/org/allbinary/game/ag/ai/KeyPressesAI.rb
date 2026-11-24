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
# package org.allbinary.game.ag.ai

require "java/lang/JavaOverload"
require "org/allbinary/game/ai/BasicAI"

module ::Org; module Allbinary; module Game; module Ag; module Ai

class KeyPressesAI < ::Org::Allbinary::Game::Ai::BasicAI
    attr_accessor :on, :keys

    def jfields_org_allbinary_game_ag_ai_KeyPressesAI
        @on = true
        @keys = nil unless instance_variable_defined?(:@keys)
    end
    

    def initialize(hashtable, ownerLayerInterface, gameInput)
        super(ownerLayerInterface, gameInput)
        jfields_org_allbinary_game_ag_ai_KeyPressesAI
        @keys = Array.new(hashtable.size(), nil)
        objectArray = ::Org::Allbinary::Util::HashtableUtil.getInstance().getKeysAsArray(hashtable)
        size = objectArray.length
        (0...size).each do |index|
            @keys[index] = hashtable.get(objectArray[index])
        end
    end
    

    # throws Exception
    def processAI(allBinaryLayerManager)
        if @on
            (0...@keys.length).each do |index|
                KeyPressesAI.superclass.java_super_method(:processKeyAI, 1).bind(self).call(@keys[index].to_i)
            end
        end
    end
    java_overload :processAI, 1
    

    # throws Exception
    def toggle()
        if self.isOn()
            self.setOn(false)
        else
            self.setOn(true)
        end
    end
    java_overload :toggle, 0
    

    # throws Exception
    def disable()
        self.setOn(false)
    end
    java_overload :disable, 0
    

    # throws Exception
    def enable()
        self.setOn(true)
    end
    java_overload :enable, 0
    

    def setOn(on)
        @on = on
    end
    java_overload :setOn, 1
    

    def isOn()
        return @on
    end
    java_overload :isOn, 0
end

module ::Org; module Allbinary; module Game; module Input; autoload :GameInput, "org/allbinary/game/input/GameInput" unless const_defined?(:GameInput, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :HashtableUtil, "org/allbinary/util/HashtableUtil" unless const_defined?(:HashtableUtil, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end

end; end; end; end; end

