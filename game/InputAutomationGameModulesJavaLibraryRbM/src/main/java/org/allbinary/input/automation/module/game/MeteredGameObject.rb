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
require "org/allbinary/input/automation/module/game/MeteredGameObjectInterface"

class MeteredGameObject
    include MeteredGameObjectInterface
    attr_accessor :ratios, :good, :dropping, :minX, :maxX, :y, :size, :RATIOS_LABEL, :IS_GOOD_LABEL, :IS_DROPPPING_LABEL

    def initialize_fields
        @ratios = nil
        @good = false
        @dropping = false
        @minX = nil
        @maxX = nil
        @y = nil
        @size = nil
        @RATIOS_LABEL = "Ratios: "
        @IS_GOOD_LABEL = "isGood: "
        @IS_DROPPPING_LABEL = "isDropping: "
    end
    

    def initialize(bufferedImage, minX, maxX, y)
        initialize_fields
        self.setRatios(Array.new(bufferedImage.length, nil))
        self.setMinX(minX)
        self.setMaxX(maxX)
        self.setY(y)
        self.setSize(maxX - minX)
        (0...bufferedImage.length).each do |index|
            nominator = GraphicsAnalysisUtil.getNominator(bufferedImage[index], self.getMinX(), self.getMaxX(), self.getY())
            self.getRatios()[index] = nominator / self.getSize()
        end
        if self.getRatios()[bufferedImage.length - 1].to_f > 0.93
            self.setGood(true)
        else
            self.setGood(false)
        end
        if self.getRatios()[bufferedImage.length - 1].to_f < self.getRatios()[0].to_f
            self.setDropping(true)
        else
            self.setDropping(false)
        end
    end
    

    def isGood()
        return @good
    end
    

    def setGood(good)
        @good = good
    end
    

    def isDropping()
        return @dropping
    end
    

    def setDropping(dropping)
        @dropping = dropping
    end
    

    def getRatios()
        return @ratios
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        commonSeps = CommonSeps.getInstance()
        stringBuffer.append(commonSeps.NEW_LINE)
        stringBuffer.append(@RATIOS_LABEL)
        (0...self.getRatios().length).each do |index|
            stringBuffer.append(self.getRatios()[index].to_s)
            if index < self.getRatios().length - 1
                stringBuffer.append(commonSeps.COMMA_SEP)
            end
        end
        stringBuffer.append(commonSeps.NEW_LINE)
        stringBuffer.append(@IS_GOOD_LABEL)
        stringBuffer.appendboolean(self.isGood())
        stringBuffer.append(commonSeps.NEW_LINE)
        stringBuffer.append(@IS_DROPPPING_LABEL)
        stringBuffer.appendboolean(self.isDropping())
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
    

    def setRatios(ratios)
        @ratios = ratios
    end
    

    def getMinX()
        return @minX
    end
    

    def setMinX(minX)
        @minX = minX
    end
    

    def getMaxX()
        return @maxX
    end
    

    def setMaxX(maxX)
        @maxX = maxX
    end
    

    def getY()
        return @y
    end
    

    def setY(y)
        @y = y
    end
    

    def getSize()
        return @size
    end
    

    def setSize(size)
        @size = size
    end
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/input/automation/module/game/GraphicsAnalysisUtil"

