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
# package org.allbinary.input.automation.module.game.skill


class GameSkillType
    attr_accessor :SPELL_GAME_SKILL_TYPE, :name

    def initialize_fields
        @SPELL_GAME_SKILL_TYPE = "SpellGameSkillType: "
        @name = nil
    end
    

    def initialize(name)
        initialize_fields
        self.setName(name)
    end
    

    def getName()
        return @name
    end
    

    def setName(name)
        @name = name
    end
    

    def toString()
        return @SPELL_GAME_SKILL_TYPE + self.getName()
    end
    alias_method :to_s, :toString

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:MANA, GameSkillType.new("Mana"))
            const_set(:REPLENISH, GameSkillType.new("Replenish"))
            const_set(:TIMED, GameSkillType.new("Timed"))
            const_set(:ATTACK, GameSkillType.new("Attack"))
            const_set(:TRANSPORT, GameSkillType.new("Transport"))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameSkillType"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:MANA, :REPLENISH, :TIMED, :ATTACK, :TRANSPORT].include?(name)
        end
        super
    end
end

begin
    GameSkillType.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

