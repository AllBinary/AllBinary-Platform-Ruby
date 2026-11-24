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
# package org.allbinary.game.layer


module ::Org; module Allbinary; module Game; module Layer

class Driver
    attr_accessor :turnSpeed, :trackPathSelectionSkill, :aggression

    def jfields_org_allbinary_game_layer_Driver
        @turnSpeed = ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().getAt(0)
        @trackPathSelectionSkill = ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().getAt(0)
        @aggression = nil unless instance_variable_defined?(:@aggression)
    end
    

    def initialize(turnSpeed, trackPathSelectionSkill, aggression)
        jfields_org_allbinary_game_layer_Driver
        self.setTurnSpeed(turnSpeed)
        self.setTrackPathSelectionSkill(trackPathSelectionSkill)
        @aggression = aggression
    end
    

    def getTurnSpeed()
        return @turnSpeed
    end
    

    def setTurnSpeed(turnSpeed)
        @turnSpeed = turnSpeed
    end
    

    def getTrackPathSelectionSkill()
        return @trackPathSelectionSkill
    end
    

    def setTrackPathSelectionSkill(trackPathSelectionSkill)
        @trackPathSelectionSkill = trackPathSelectionSkill
    end
    

    def getAggression()
        return @aggression
    end
    

    def setAggression(aggression)
        @aggression = aggression
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_DRIVER, Driver.new(::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().getAt(0), ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().getAt(0), Aggression.new(::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().getAt(0), ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().getAt(0), ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().getAt(0))))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "Driver"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_DRIVER].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
autoload :Aggression, "org/allbinary/game/layer/Aggression" unless const_defined?(:Aggression, false)

begin
    Driver.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

