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
# package org.allbinary.game.combat


module ::Org; module Allbinary; module Game; module Combat

class CombatBaseBehavior
    attr_accessor :damageableBaseBehavior, :destroyableBaseBehavior, :readyForExplosion

    def jfields_org_allbinary_game_combat_CombatBaseBehavior
        @damageableBaseBehavior = nil unless instance_variable_defined?(:@damageableBaseBehavior)
        @destroyableBaseBehavior = nil unless instance_variable_defined?(:@destroyableBaseBehavior)
        @readyForExplosion = false unless instance_variable_defined?(:@readyForExplosion)
    end
    

    def initialize(damageableBaseBehavior, destroyableBaseBehavior)
        jfields_org_allbinary_game_combat_CombatBaseBehavior
        @damageableBaseBehavior = damageableBaseBehavior
        @destroyableBaseBehavior = destroyableBaseBehavior
    end
    

    def getDamageableBaseBehavior()
        return @damageableBaseBehavior
    end
    

    def getDestroyableBaseBehavior()
        return @destroyableBaseBehavior
    end
    

    def isReadyForExplosion()
        return @readyForExplosion
    end
    

    def setReadyForExplosion(readyForExplosion)
        @readyForExplosion = readyForExplosion
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_COMBAT_BEHAVIOR, CombatBaseBehavior.new(::Org::Allbinary::Game::Combat::Damage::DamageableBaseBehavior.getInstance(), ::Org::Allbinary::Game::Combat::Destroy::DestroyableBaseBehavior.getInstance()))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CombatBaseBehavior"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_COMBAT_BEHAVIOR].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Combat; module Damage; autoload :DamageableBaseBehavior, "org/allbinary/game/combat/damage/DamageableBaseBehavior" unless const_defined?(:DamageableBaseBehavior, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Combat; module Destroy; autoload :DestroyableBaseBehavior, "org/allbinary/game/combat/destroy/DestroyableBaseBehavior" unless const_defined?(:DestroyableBaseBehavior, false); end; end; end; end; end

begin
    CombatBaseBehavior.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

