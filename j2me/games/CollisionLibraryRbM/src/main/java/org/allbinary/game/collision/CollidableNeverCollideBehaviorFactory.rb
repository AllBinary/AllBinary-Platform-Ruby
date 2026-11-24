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
# package org.allbinary.game.collision

require "java/lang/JavaOverload"
require "org/allbinary/game/collision/CollidableBaseBehaviorFactory"

module ::Org; module Allbinary; module Game; module Collision

class CollidableNeverCollideBehaviorFactory < CollidableBaseBehaviorFactory
    attr_accessor :instance

    def jfields_org_allbinary_game_collision_CollidableNeverCollideBehaviorFactory
        @instance = CollidableNeverCollideBehavior.new(false)
    end

    def initialize
        super()
        jfields_org_allbinary_game_collision_CollidableNeverCollideBehaviorFactory
    end
    

    def self.getInstance()
        return CollidableNeverCollideBehaviorFactory.instanceC
    end
    

    def createBehavior()
        return @instance
    end
    java_overload :createBehavior, 0

    def self.instanceC()
        CollidableNeverCollideBehaviorFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instanceC) ? @@instanceC : nil
    end

    def self.instanceC=(value)
        CollidableNeverCollideBehaviorFactory.java_static_fields unless @java_static_fields_started
        @@instanceC = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instanceC = CollidableNeverCollideBehaviorFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CollidableNeverCollideBehaviorFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :CollidableBaseBehavior, "org/allbinary/game/collision/CollidableBaseBehavior" unless const_defined?(:CollidableBaseBehavior, false)
autoload :CollidableNeverCollideBehavior, "org/allbinary/game/collision/CollidableNeverCollideBehavior" unless const_defined?(:CollidableNeverCollideBehavior, false)

begin
    CollidableNeverCollideBehaviorFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

