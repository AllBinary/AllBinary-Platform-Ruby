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
        GameSkill.java_static_fields unless @java_static_fields_started
        return defined?(@@hashMap) ? @@hashMap : nil
    end

    def self.hashMap=(value)
        GameSkill.java_static_fields unless @java_static_fields_started
        @@hashMap = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@hashMap = StdUtil.getInstance().createHashMap()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameSkill"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :CommonSeps, "org/allbinary/string/CommonSeps"
autoload :GameSkillPropertyInterface, "org/allbinary/input/automation/module/game/skill/GameSkillPropertyInterface"
autoload :GameSkillType, "org/allbinary/input/automation/module/game/skill/GameSkillType"

begin
    GameSkill.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

