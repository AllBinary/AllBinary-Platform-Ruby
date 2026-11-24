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
require "org/allbinary/game/ag/ai/KeyPressesAI"

module ::Org; module Allbinary; module Game; module Ag; module Ai

class MultiKeyPressesAI < KeyPressesAI
    attr_accessor :toggleTimeHelper, :gameTickTimeDelayHelper

    def jfields_org_allbinary_game_ag_ai_MultiKeyPressesAI
        @toggleTimeHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(600)
        @gameTickTimeDelayHelper = ::Org::Allbinary::TimePackage::GameTickTimeDelayHelperFactory.getInstance()
    end
    

    def initialize(hashtable, ownerLayerInterface, gameInput)
        super(hashtable, ownerLayerInterface, gameInput)
        jfields_org_allbinary_game_ag_ai_MultiKeyPressesAI
        self.update()
    end
    

    # throws Exception
    def processAI(allBinaryLayerManager)
    end
    java_overload :processAI, 1
    

    # throws Exception
    def update()
        gameInput = self.getGameInput()
        keys = @keys
        size = keys.length
        if self.isOn()
            (0...size).each do |index|
                key = keys[index].to_i
                if key != -1
                    gameInput.add(@gameKeyEventFactory.getInstanceForKey(self, key))
                end
            end
        else
            (0...size).each do |index|
                key = keys[index].to_i
                if key != -1
                    gameInput.addForRemoval(@gameKeyEventFactory.getInstanceForKey(self, key))
                end
            end
        end
    end
    java_overload :update, 0
    

    # throws Exception
    def toggle()
        if @toggleTimeHelper.isTime(@gameTickTimeDelayHelper.startTime)
            MultiKeyPressesAI.superclass.java_super_method(:toggle, 0).bind(self).call()
            self.update()
        end
    end
    java_overload :toggle, 0
    

    # throws Exception
    def disable()
        if @toggleTimeHelper.isTime(@gameTickTimeDelayHelper.startTime)
            MultiKeyPressesAI.superclass.java_super_method(:disable, 0).bind(self).call()
            self.update()
        end
    end
    java_overload :disable, 0
    

    # throws Exception
    def enable()
        if @toggleTimeHelper.isTime(@gameTickTimeDelayHelper.startTime)
            MultiKeyPressesAI.superclass.java_super_method(:enable, 0).bind(self).call()
            self.update()
        end
    end
    java_overload :enable, 0
end

module ::Org; module Allbinary; module Game; module Input; autoload :GameInput, "org/allbinary/game/input/GameInput" unless const_defined?(:GameInput, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :GameTickTimeDelayHelper, "org/allbinary/time/GameTickTimeDelayHelper" unless const_defined?(:GameTickTimeDelayHelper, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :GameTickTimeDelayHelperFactory, "org/allbinary/time/GameTickTimeDelayHelperFactory" unless const_defined?(:GameTickTimeDelayHelperFactory, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end

end; end; end; end; end

