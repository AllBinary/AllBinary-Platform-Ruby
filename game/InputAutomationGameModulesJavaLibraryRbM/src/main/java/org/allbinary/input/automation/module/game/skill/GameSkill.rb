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

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Game; module Skill

class GameSkill
    attr_accessor :gameSkillType, :extra, :time, :vector, :GAME_SKILL_LABEL, :EXTRA_LABEL, :TIME_LABEL

    def jfields_org_allbinary_input_automation_module_game_skill_GameSkill
        @gameSkillType = nil unless instance_variable_defined?(:@gameSkillType)
        @extra = nil unless instance_variable_defined?(:@extra)
        @time = 0 unless instance_variable_defined?(:@time)
        @vector = nil unless instance_variable_defined?(:@vector)
        @GAME_SKILL_LABEL = "GameSkill: "
        @EXTRA_LABEL = "Extra: "
        @TIME_LABEL = "Time: "
    end
    

    def initialize(gameSkillType, extra, time)
        jfields_org_allbinary_input_automation_module_game_skill_GameSkill
        self.setGameSkillType(gameSkillType)
        self.setExtra(extra)
        self.setTime(time)
        @vector = ::Org::Allbinary::Util::BasicArrayListD.new()
        GameSkill.hashMap.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(self.getGameSkillType().getName()).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE).append(extra).to_s, self)
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
        return GameSkill.hashMap.get(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(gameSkillType.getName()).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE).append(extra).to_s)
    end
    

    def toString()
        commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
            @@hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
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

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
autoload :GameSkillPropertyInterface, "org/allbinary/input/automation/module/game/skill/GameSkillPropertyInterface" unless const_defined?(:GameSkillPropertyInterface, false)
autoload :GameSkillType, "org/allbinary/input/automation/module/game/skill/GameSkillType" unless const_defined?(:GameSkillType, false)

begin
    GameSkill.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

