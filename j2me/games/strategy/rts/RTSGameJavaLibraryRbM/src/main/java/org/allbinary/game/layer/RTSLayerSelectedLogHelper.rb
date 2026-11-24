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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/game/layer/RTSLayerLogHelper"

module ::Org; module Allbinary; module Game; module Layer

class RTSLayerSelectedLogHelper < RTSLayerLogHelper
    attr_accessor :logUtil, :commonSeps, :positionStrings, :TRACKTO_TURNTO

    def jfields_org_allbinary_game_layer_RTSLayerSelectedLogHelper
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        @positionStrings = ::Org::Allbinary::MathPackage::PositionStrings.getInstance()
        @TRACKTO_TURNTO = "trackTo:turnTo"
    end

    def initialize
        super()
        jfields_org_allbinary_game_layer_RTSLayerSelectedLogHelper
    end
    

    def self.getInstance()
        return RTSLayerSelectedLogHelper.instanceC
    end
    

    def setClosestGeographicMapCellHistory(associatedAdvancedRTSGameLayer, pathsList)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(@commonSeps.SPACE)
        stringBuffer.append(::Org::Allbinary::StringPackage::CommonLabels.getInstance().START)
        stringBuffer.appendint(pathsList.size())
        stringBuffer.append(" -> ")
        stringBuffer.append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(pathsList))
        @logUtil.putF(stringBuffer.to_s, self, "selected: setClosestGeographicMapCellHistory")
    end
    java_overload :setClosestGeographicMapCellHistory, 2
    

    def trackTo(associatedAdvancedRTSGameLayer, nextUnvisitedPathGeographicMapCellPosition, dx, dy, reason)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName())
        stringBuffer.append(@commonSeps.SPACE)
        stringBuffer.append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(nextUnvisitedPathGeographicMapCellPosition))
        stringBuffer.append(@positionStrings.DX_LABEL)
        stringBuffer.appendint(dx)
        stringBuffer.append(@commonSeps.SPACE)
        stringBuffer.append(@positionStrings.DY_LABEL)
        stringBuffer.appendint(dy)
        stringBuffer.append(@commonSeps.SPACE)
        stringBuffer.append(reason)
        @logUtil.putF(stringBuffer.to_s, self, "selected: trackTo")
    end
    java_overload :trackTo, 5
    

    def turnTo(associatedAdvancedRTSGameLayer, dx, dy, angleInfo, angle, movementAngle, evading, targetAngle)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
        stringBuffer.appendshort(((((movementAngle.getValue()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }) + 32768) % 65536 - 32768))
        if angleInfo != nil
            angleIncrement = angleInfo.getAngleIncrementInfo().getAngleIncrement()
            stringBuffer.append(" angleIncrement: ")
            stringBuffer.appendshort(angleIncrement)
        end
        stringBuffer.append(" Evading: ")
        stringBuffer.appendboolean(evading)
        @logUtil.putF(stringBuffer.to_s, self, @TRACKTO_TURNTO)
    end
    java_overload :turnTo, 8
    

    def doneMoving(associatedAdvancedRTSGameLayer)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" steering - done moving 0,0").to_s, self, @TRACKTO_TURNTO)
    end
    java_overload :doneMoving, 1
    

    def closeEnough(associatedAdvancedRTSGameLayer)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" steering - close enough").to_s, self, @TRACKTO_TURNTO)
    end
    java_overload :closeEnough, 1
    

    def movingLeft(associatedAdvancedRTSGameLayer)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" steering - allow movingLeft").to_s, self, @TRACKTO_TURNTO)
    end
    java_overload :movingLeft, 1
    

    def movingRight(associatedAdvancedRTSGameLayer)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" steering - allow movingRight").to_s, self, @TRACKTO_TURNTO)
    end
    java_overload :movingRight, 1
    

    def movingUp(associatedAdvancedRTSGameLayer)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" steering - allow movingUp").to_s, self, @TRACKTO_TURNTO)
    end
    java_overload :movingUp, 1
    

    def movingDown(associatedAdvancedRTSGameLayer)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" steering - allow movingDown").to_s, self, @TRACKTO_TURNTO)
    end
    java_overload :movingDown, 1
    

    def currentMoveEnded(associatedAdvancedRTSGameLayer)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" steering - correct angle, but movement not needed for current deltas so reseting movement angle").to_s, self, @TRACKTO_TURNTO)
    end
    java_overload :currentMoveEnded, 1
    

    def evade(associatedAdvancedRTSGameLayer)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" steering - evade").to_s, self, @TRACKTO_TURNTO)
    end
    java_overload :evade, 1
    

    def rotateLeft(associatedAdvancedRTSGameLayer)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" steering - rotating left").to_s, self, @TRACKTO_TURNTO)
    end
    java_overload :rotateLeft, 1
    

    def rotateRight(associatedAdvancedRTSGameLayer)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" steering - rotating right").to_s, self, @TRACKTO_TURNTO)
    end
    java_overload :rotateRight, 1
    

    def handle(associatedAdvancedRTSGameLayer, movementAngle)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" steering - movementAngle: ").append(movementAngle.name).append(@commonSeps.FORWARD_SLASH).appendshort(((((movementAngle.getValue()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }) + 32768) % 65536 - 32768)).to_s, self, @TRACKTO_TURNTO)
    end
    java_overload :handle, 2
    

    def noRotation(associatedAdvancedRTSGameLayer)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(" steering - Do not rotate").to_s, self, @TRACKTO_TURNTO)
    end
    java_overload :noRotation, 1
    

    def notOnPath(associatedAdvancedRTSGameLayer, geographicMapCellHistory, currentGeographicMapCellPosition, pathList)
        stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(associatedAdvancedRTSGameLayer.getName()).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE).appendint(((geographicMapCellHistory.getTotalVisited()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE).append(stringUtil.toString(currentGeographicMapCellPosition)).append(" - trying to move but not on path: ").append(stringUtil.toString(pathList)).to_s, self, "turnTo")
    end
    java_overload :notOnPath, 4

    def self.instanceC()
        RTSLayerSelectedLogHelper.java_static_fields unless @java_static_fields_started
        return defined?(@@instanceC) ? @@instanceC : nil
    end

    def self.instanceC=(value)
        RTSLayerSelectedLogHelper.java_static_fields unless @java_static_fields_started
        @@instanceC = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instanceC = RTSLayerSelectedLogHelper.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "RTSLayerSelectedLogHelper"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleInfo, "org/allbinary/math/AngleInfo" unless const_defined?(:AngleInfo, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :NamedAngle, "org/allbinary/math/NamedAngle" unless const_defined?(:NamedAngle, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :PositionStrings, "org/allbinary/math/PositionStrings" unless const_defined?(:PositionStrings, false); end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellHistory, "org/allbinary/media/graphics/geography/map/GeographicMapCellHistory" unless const_defined?(:GeographicMapCellHistory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
autoload :PathFindingLayerInterface, "org/allbinary/game/layer/PathFindingLayerInterface" unless const_defined?(:PathFindingLayerInterface, false)

begin
    RTSLayerSelectedLogHelper.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

