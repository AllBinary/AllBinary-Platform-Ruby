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
end

class GameSkillType
    MANA = GameSkillType.new("Mana")
    REPLENISH = GameSkillType.new("Replenish")
    TIMED = GameSkillType.new("Timed")
    ATTACK = GameSkillType.new("Attack")
    TRANSPORT = GameSkillType.new("Transport")
end

