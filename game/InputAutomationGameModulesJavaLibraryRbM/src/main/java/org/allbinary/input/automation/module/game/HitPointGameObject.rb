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
# package org.allbinary.input.automation.module.game

require "java/lang/JavaOverload"
# require "java/awt/image/BufferedImage"
require "org/allbinary/input/automation/module/game/HitPointGameObjectInterface"
require "org/allbinary/input/automation/module/game/MeteredGameObject"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Game

class HitPointGameObject < MeteredGameObject
    include HitPointGameObjectInterface
    attr_accessor :damaged, :closeDeath, :HP_LABEL, :IS_DAMAGED_LABEL, :IS_CLOSE_DEATH_LABEL

    def jfields_org_allbinary_input_automation_module_game_HitPointGameObject
        @damaged = false
        @closeDeath = false
        @HP_LABEL = "HP: "
        @IS_DAMAGED_LABEL = "isDamaged: "
        @IS_CLOSE_DEATH_LABEL = "isCloseDeath: "
    end
    

    def initialize(bufferedImage, minX, maxX, y)
        super(bufferedImage, minX, maxX, y)
        jfields_org_allbinary_input_automation_module_game_HitPointGameObject
        if self.getRatios()[bufferedImage.length - 1].to_f < 1.0
            self.setDamaged(true)
        else
            self.setDamaged(false)
        end
        if self.getRatios()[bufferedImage.length - 1].to_f > 0.25
            @closeDeath = false
        else
            @closeDeath = true
        end
    end
    

    def isMoreThan(aFloat)
        if self.getRatios()[self.getRatios().length - 1].to_f > aFloat
            return true
        else
            return false
        end
    end
    java_overload :isMoreThan, 1
    

    def isCloseDeath()
        return @closeDeath
    end
    java_overload :isCloseDeath, 0
    

    def setCloseDeath(closeDeath)
        @closeDeath = closeDeath
    end
    java_overload :setCloseDeath, 1
    

    def isDamaged()
        return @damaged
    end
    java_overload :isDamaged, 0
    

    def setDamaged(damaged)
        @damaged = damaged
    end
    java_overload :setDamaged, 1
    

    def toString()
        commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(@HP_LABEL)
        stringBuffer.append(super.to_s)
        stringBuffer.append(commonSeps.NEW_LINE)
        stringBuffer.append(@IS_DAMAGED_LABEL)
        stringBuffer.appendboolean(self.isDamaged())
        stringBuffer.append(commonSeps.NEW_LINE)
        stringBuffer.append(@IS_CLOSE_DEATH_LABEL)
        stringBuffer.appendboolean(self.isCloseDeath())
        return stringBuffer.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end

end; end; end; end; end; end

