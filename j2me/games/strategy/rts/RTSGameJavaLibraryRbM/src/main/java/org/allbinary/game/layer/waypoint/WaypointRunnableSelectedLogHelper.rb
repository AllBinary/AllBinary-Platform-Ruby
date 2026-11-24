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
# package org.allbinary.game.layer.waypoint

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/game/layer/waypoint/WaypointRunnableLogHelper"

module ::Org; module Allbinary; module Game; module Layer; module Waypoint

class WaypointRunnableSelectedLogHelper < WaypointRunnableLogHelper
    attr_accessor :logUtil, :commonStrings

    def jfields_org_allbinary_game_layer_waypoint_WaypointRunnableSelectedLogHelper
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
    end

    def initialize
        super()
        jfields_org_allbinary_game_layer_waypoint_WaypointRunnableSelectedLogHelper
    end
    

    def self.getInstance()
        return WaypointRunnableSelectedLogHelper.instanceC
    end
    

    def start(pathFindingLayerInterface)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(pathFindingLayerInterface.getName()).append(@commonStrings.START_RUNNABLE).to_s, self, @commonStrings.RUN)
    end
    java_overload :start, 1
    

    def end_(pathFindingLayerInterface)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(pathFindingLayerInterface.getName()).append(@commonStrings.END_RUNNABLE).to_s, self, @commonStrings.RUN)
    end
    java_overload :end_, 1

    def self.instanceC()
        WaypointRunnableSelectedLogHelper.java_static_fields unless @java_static_fields_started
        return defined?(@@instanceC) ? @@instanceC : nil
    end

    def self.instanceC=(value)
        WaypointRunnableSelectedLogHelper.java_static_fields unless @java_static_fields_started
        @@instanceC = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instanceC = WaypointRunnableSelectedLogHelper.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "WaypointRunnableSelectedLogHelper"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Layer; autoload :PathFindingLayerInterface, "org/allbinary/game/layer/PathFindingLayerInterface" unless const_defined?(:PathFindingLayerInterface, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end

begin
    WaypointRunnableSelectedLogHelper.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

