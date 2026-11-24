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
require "org/allbinary/input/automation/module/game/MeteredGameObjectInterface"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Game

class MeteredGameObject
    include MeteredGameObjectInterface
    attr_accessor :ratios, :good, :dropping, :minX, :maxX, :y, :size, :RATIOS_LABEL, :IS_GOOD_LABEL, :IS_DROPPPING_LABEL

    def jfields_org_allbinary_input_automation_module_game_MeteredGameObject
        @ratios = nil unless instance_variable_defined?(:@ratios)
        @good = false
        @dropping = false
        @minX = nil unless instance_variable_defined?(:@minX)
        @maxX = nil unless instance_variable_defined?(:@maxX)
        @y = nil unless instance_variable_defined?(:@y)
        @size = nil unless instance_variable_defined?(:@size)
        @RATIOS_LABEL = "Ratios: "
        @IS_GOOD_LABEL = "isGood: "
        @IS_DROPPPING_LABEL = "isDropping: "
    end
    

    def initialize(bufferedImage, minX, maxX, y)
        jfields_org_allbinary_input_automation_module_game_MeteredGameObject
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
    java_overload :isGood, 0
    

    def setGood(good)
        @good = good
    end
    java_overload :setGood, 1
    

    def isDropping()
        return @dropping
    end
    java_overload :isDropping, 0
    

    def setDropping(dropping)
        @dropping = dropping
    end
    java_overload :setDropping, 1
    

    def getRatios()
        return @ratios
    end
    java_overload :getRatios, 0
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
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
    java_overload :toString, 0
    alias_method :to_s, :toString
    

    def setRatios(ratios)
        @ratios = ratios
    end
    java_overload :setRatios, 1
    

    def getMinX()
        return @minX
    end
    java_overload :getMinX, 0
    

    def setMinX(minX)
        @minX = minX
    end
    java_overload :setMinX, 1
    

    def getMaxX()
        return @maxX
    end
    java_overload :getMaxX, 0
    

    def setMaxX(maxX)
        @maxX = maxX
    end
    java_overload :setMaxX, 1
    

    def getY()
        return @y
    end
    java_overload :getY, 0
    

    def setY(y)
        @y = y
    end
    java_overload :setY, 1
    

    def getSize()
        return @size
    end
    java_overload :getSize, 0
    

    def setSize(size)
        @size = size
    end
    java_overload :setSize, 1
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
autoload :GraphicsAnalysisUtil, "org/allbinary/input/automation/module/game/GraphicsAnalysisUtil" unless const_defined?(:GraphicsAnalysisUtil, false)

end; end; end; end; end; end

