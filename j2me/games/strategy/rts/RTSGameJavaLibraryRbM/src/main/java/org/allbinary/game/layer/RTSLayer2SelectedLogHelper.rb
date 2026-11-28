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
require "org/allbinary/game/layer/RTSLayer2LogHelper"

module ::Org; module Allbinary; module Game; module Layer

class RTSLayer2SelectedLogHelper < RTSLayer2LogHelper
    attr_accessor :logUtil, :TRACK_TO_FIRE_OR_MOVE, :BUILDING_CHASE

    def jfields_org_allbinary_game_layer_RTSLayer2SelectedLogHelper
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @TRACK_TO_FIRE_OR_MOVE = "trackTo:fireOrMove"
        @BUILDING_CHASE = "buildingChase"
    end

    def initialize
        super()
        jfields_org_allbinary_game_layer_RTSLayer2SelectedLogHelper
    end
    

    def self.getInstance()
        return @@instanceC
    end
    

    def steeringUp(pathFindingLayerInterface)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(pathFindingLayerInterface.getName()).append(" steering - Up").to_s, self, @TRACK_TO_FIRE_OR_MOVE)
    end
    java_overload :steeringUp, 1
    

    def steeringFireOrStop(pathFindingLayerInterface)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(pathFindingLayerInterface.getName()).append(" steering - Fire/All Stop").to_s, self, @TRACK_TO_FIRE_OR_MOVE)
    end
    java_overload :steeringFireOrStop, 1
    

    def buildingAbove(pathFindingLayerInterface)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(pathFindingLayerInterface.getName()).append(" Building Above").to_s, self, @BUILDING_CHASE)
    end
    java_overload :buildingAbove, 1
    

    def buildingChaseLeft(pathFindingLayerInterface, angle)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(pathFindingLayerInterface.getName()).append(" steering - Going Left: ").appendint(angle).to_s, self, @BUILDING_CHASE)
    end
    java_overload :buildingChaseLeft, 2
    

    def buildingChaseRight(pathFindingLayerInterface, angle)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(pathFindingLayerInterface.getName()).append(" steering - Going Right: ").appendint(angle).to_s, self, @BUILDING_CHASE)
    end
    java_overload :buildingChaseRight, 2
    

    def buildingDown(pathFindingLayerInterface)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(pathFindingLayerInterface.getName()).append(" Building Below").to_s, self, @BUILDING_CHASE)
    end
    java_overload :buildingDown, 1
    

    def buildingChaseDown(pathFindingLayerInterface, angle)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(pathFindingLayerInterface.getName()).append(" steering - Going Down: ").appendint(angle).to_s, self, @BUILDING_CHASE)
    end
    java_overload :buildingChaseDown, 2
    

    def buildingChaseUp(pathFindingLayerInterface, angle)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(pathFindingLayerInterface.getName()).append(" steering - Going Up: ").appendint(angle).to_s, self, @BUILDING_CHASE)
    end
    java_overload :buildingChaseUp, 2
    

    def buildingLeft(pathFindingLayerInterface)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(pathFindingLayerInterface.getName()).append(" Building Left").to_s, self, @BUILDING_CHASE)
    end
    java_overload :buildingLeft, 1
    

    def buildingRight(pathFindingLayerInterface)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(pathFindingLayerInterface.getName()).append(" Building Right").to_s, self, @BUILDING_CHASE)
    end
    java_overload :buildingRight, 1

    def self.instanceC()
        RTSLayer2SelectedLogHelper.java_static_fields unless @java_static_fields_started
        return defined?(@@instanceC) ? @@instanceC : nil
    end

    def self.instanceC=(value)
        RTSLayer2SelectedLogHelper.java_static_fields unless @java_static_fields_started
        @@instanceC = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instanceC = RTSLayer2SelectedLogHelper.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "RTSLayer2SelectedLogHelper"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
autoload :PathFindingLayerInterface, "org/allbinary/game/layer/PathFindingLayerInterface" unless const_defined?(:PathFindingLayerInterface, false)

begin
    RTSLayer2SelectedLogHelper.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

