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


class GameSkill
    attr_accessor :gameSkillType, :extra, :time, :vector, :GAME_SKILL_LABEL, :EXTRA_LABEL, :TIME_LABEL

    def initialize_fields
        @gameSkillType = nil
        @extra = nil
        @time = 0
        @vector = nil
        @GAME_SKILL_LABEL = "GameSkill: "
        @EXTRA_LABEL = "Extra: "
        @TIME_LABEL = "Time: "
    end
    

    def initialize(gameSkillType, extra, time)
        initialize_fields
        self.setGameSkillType(gameSkillType)
        self.setExtra(extra)
        self.setTime(time)
        @vector = BasicArrayListD.new()
        GameSkill.hashMap.put(StringMaker.new().append(self.getGameSkillType().getName()).append(CommonSeps.getInstance().SPACE).append(extra).to_s, self)
    end
    

    def getGameSkillType()
        return @gameSkillType
    end
    

    def setGameSkillType(gameSkillType)
        @gameSkillType = gameSkillType
    end
    

    def getExtra()
        return @extra
    end
    

    def setExtra(extra)
        @extra = extra
    end
    

    def getTime()
        return @time
    end
    

    def setTime(time)
        @time = time
    end
    

    def addProperty(gameSkillPropertyInterface)
        @vector.add(gameSkillPropertyInterface)
    end
    

    def getProperties()
        return @vector
    end
    

    def self.getInstance(gameSkillType, extra)
        return GameSkill.hashMap.get(StringMaker.new().append(gameSkillType.getName()).append(CommonSeps.getInstance().SPACE).append(extra).to_s)
    end
    

    def toString()
        commonSeps = CommonSeps.getInstance()
        stringBuffer = StringMaker.new()
        stringBuffer.append(@GAME_SKILL_LABEL)
        stringBuffer.append(self.getGameSkillType().to_s)
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(@EXTRA_LABEL)
        stringBuffer.append(self.getExtra())
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(@TIME_LABEL)
        stringBuffer.appendlong(self.getTime())
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString

    def self.hashMap()
        return defined?(@@hashMap) ? @@hashMap : nil
    end

    def self.hashMap=(value)
        @@hashMap = value
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/input/automation/module/game/skill/GameSkillPropertyInterface"
require "org/allbinary/input/automation/module/game/skill/GameSkillType"

class GameSkill
    @@hashMap = StdUtil.getInstance().createHashMap()
end

