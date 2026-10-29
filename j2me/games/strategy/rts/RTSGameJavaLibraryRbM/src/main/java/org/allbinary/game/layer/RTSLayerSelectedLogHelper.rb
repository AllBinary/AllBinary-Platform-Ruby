# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.game.layer

require "org/allbinary/game/layer/RTSLayerLogHelper"

class RTSLayerSelectedLogHelper < RTSLayerLogHelper
    attr_accessor :logUtil, :commonSeps, :positionStrings, :TRACKTO_TURNTO

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonSeps = CommonSeps.getInstance()
        @positionStrings = PositionStrings.getInstance()
        @TRACKTO_TURNTO = "trackTo:turnTo"
    end

    def initialize
        super()
        initialize_fields
    end
    

    def self.getInstance()
        return RTSLayerSelectedLogHelper.instanceC
    end
    

    def setClosestGeographicMapCellHistory(associatedAdvancedRTSGameLayer, pathsList)
        stringBuffer = StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(@commonSeps.SPACE)
        stringBuffer.append(CommonLabels.getInstance().START)
        stringBuffer.appendint(pathsList.size())
        stringBuffer.append(" -> ")
        stringBuffer.append(StringUtil.getInstance().toString(pathsList))
        @logUtil.putF(stringBuffer.to_s, self, "selected: setClosestGeographicMapCellHistory")
    end
    

    def trackTo(associatedAdvancedRTSGameLayer, nextUnvisitedPathGeographicMapCellPosition, dx, dy, reason)
        stringBuffer = StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(@commonSeps.SPACE)
        stringBuffer.append(StringUtil.getInstance().toString(nextUnvisitedPathGeographicMapCellPosition))
        stringBuffer.append(@positionStrings.DX_LABEL)
        stringBuffer.appendint(dx)
        stringBuffer.append(@commonSeps.SPACE)
        stringBuffer.append(@positionStrings.DY_LABEL)
        stringBuffer.appendint(dy)
        stringBuffer.append(@commonSeps.SPACE)
        stringBuffer.append(reason)
        @logUtil.putF(stringBuffer.to_s, self, "selected: trackTo")
    end
    

    def turnTo(associatedAdvancedRTSGameLayer, dx, dy, angleInfo, angle, movementAngle, evading, targetAngle)
        stringBuffer = StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(" steering - ")
        stringBuffer.append(@positionStrings.DX_LABEL)
        stringBuffer.appendint(dx)
        stringBuffer.append(@commonSeps.SPACE)
        stringBuffer.append(@positionStrings.DY_LABEL)
        stringBuffer.appendint(dy)
        stringBuffer.append(" angle: ")
        stringBuffer.appendint(angle)
        stringBuffer.append(" movementAngle: ")
        stringBuffer.append(movementAngle.name)
        stringBuffer.append(@commonSeps.FORWARD_SLASH)
        stringBuffer.appendshort((((movementAngle.getValue()).to_i + 32768) % 65536 - 32768))
        if angleInfo != nil
            angleIncrement = angleInfo.getAngleIncrementInfo().getAngleIncrement()
            stringBuffer.append(" angleIncrement: ")
            stringBuffer.appendshort(angleIncrement)
        end
        stringBuffer.append(" Evading: ")
        stringBuffer.appendboolean(evading)
        @logUtil.putF(stringBuffer.to_s, self, @TRACKTO_TURNTO)
    end
    

    def doneMoving(associatedAdvancedRTSGameLayer)
        @logUtil.putF(StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" steering - done moving 0,0").to_s, self, @TRACKTO_TURNTO)
    end
    

    def closeEnough(associatedAdvancedRTSGameLayer)
        @logUtil.putF(StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" steering - close enough").to_s, self, @TRACKTO_TURNTO)
    end
    

    def movingLeft(associatedAdvancedRTSGameLayer)
        @logUtil.putF(StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" steering - allow movingLeft").to_s, self, @TRACKTO_TURNTO)
    end
    

    def movingRight(associatedAdvancedRTSGameLayer)
        @logUtil.putF(StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" steering - allow movingRight").to_s, self, @TRACKTO_TURNTO)
    end
    

    def movingUp(associatedAdvancedRTSGameLayer)
        @logUtil.putF(StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" steering - allow movingUp").to_s, self, @TRACKTO_TURNTO)
    end
    

    def movingDown(associatedAdvancedRTSGameLayer)
        @logUtil.putF(StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" steering - allow movingDown").to_s, self, @TRACKTO_TURNTO)
    end
    

    def currentMoveEnded(associatedAdvancedRTSGameLayer)
        @logUtil.putF(StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" steering - correct angle, but movement not needed for current deltas so reseting movement angle").to_s, self, @TRACKTO_TURNTO)
    end
    

    def evade(associatedAdvancedRTSGameLayer)
        @logUtil.putF(StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" steering - evade").to_s, self, @TRACKTO_TURNTO)
    end
    

    def rotateLeft(associatedAdvancedRTSGameLayer)
        @logUtil.putF(StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" steering - rotating left").to_s, self, @TRACKTO_TURNTO)
    end
    

    def rotateRight(associatedAdvancedRTSGameLayer)
        @logUtil.putF(StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" steering - rotating right").to_s, self, @TRACKTO_TURNTO)
    end
    

    def handle(associatedAdvancedRTSGameLayer, movementAngle)
        @logUtil.putF(StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" steering - movementAngle: ").append(movementAngle.name).append(@commonSeps.FORWARD_SLASH).appendshort((((movementAngle.getValue()).to_i + 32768) % 65536 - 32768)).to_s, self, @TRACKTO_TURNTO)
    end
    

    def noRotation(associatedAdvancedRTSGameLayer)
        @logUtil.putF(StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" steering - Do not rotate").to_s, self, @TRACKTO_TURNTO)
    end
    

    def notOnPath(associatedAdvancedRTSGameLayer, geographicMapCellHistory, currentGeographicMapCellPosition, pathList)
        stringUtil = StringUtil.getInstance()
        @logUtil.putF(StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(CommonSeps.getInstance().SPACE).appendint((geographicMapCellHistory.getTotalVisited()).to_i).append(CommonSeps.getInstance().SPACE).append(stringUtil.toString(currentGeographicMapCellPosition)).append(" - trying to move but not on path: ").append(stringUtil.toString(pathList)).to_s, self, "turnTo")
    end

    def self.instanceC()
        return defined?(@@instanceC) ? @@instanceC : nil
    end

    def self.instanceC=(value)
        @@instanceC = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/math/AngleInfo"
require "org/allbinary/math/NamedAngle"
require "org/allbinary/math/PositionStrings"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellHistory"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/game/layer/PathFindingLayerInterface"

class RTSLayerSelectedLogHelper
    @@instanceC = RTSLayerSelectedLogHelper.new()
end

