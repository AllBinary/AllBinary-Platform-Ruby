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

# require "java/awt/image/BufferedImage"
require "org/allbinary/input/automation/module/game/HitPointGameObjectInterface"
require "org/allbinary/input/automation/module/game/MeteredGameObject"

class HitPointGameObject < MeteredGameObject
    include HitPointGameObjectInterface
    attr_accessor :damaged, :closeDeath, :HP_LABEL, :IS_DAMAGED_LABEL, :IS_CLOSE_DEATH_LABEL

    def initialize_fields
        @damaged = false
        @closeDeath = false
        @HP_LABEL = "HP: "
        @IS_DAMAGED_LABEL = "isDamaged: "
        @IS_CLOSE_DEATH_LABEL = "isCloseDeath: "
    end
    

    def initialize(bufferedImage, minX, maxX, y)
        super(bufferedImage, minX, maxX, y)
        initialize_fields
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
    

    def isCloseDeath()
        return @closeDeath
    end
    

    def setCloseDeath(closeDeath)
        @closeDeath = closeDeath
    end
    

    def isDamaged()
        return @damaged
    end
    

    def setDamaged(damaged)
        @damaged = damaged
    end
    

    def toString()
        commonSeps = CommonSeps.getInstance()
        stringBuffer = StringMaker.new()
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
    alias_method :to_s, :toString
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonSeps"

