# 
# AllBinary Open License Version 1 
# Copyright (c) 2003 AllBinary 
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
require "org/allbinary/thread/ARunnable"
require "org/allbinary/game/layer/WaypointPathRunnableBase"

module ::Org; module Allbinary; module Game; module Layer

class MultipassWaypointPathRunnable < WaypointPathRunnableBase
    attr_accessor :logUtil, :basicArrayListUtil, :multipassState, :done, :list, :pathFindingInfo, :FIRST_RUNNABLE, :SECOND_RUNNABLE, :END_RUNNABLE, :ALREADY_ENDED_RUNNABLE, :currentPassRunnable
    class FirstRunnable < ::Org::Allbinary::ThreadPackage::ARunnable
        attr_accessor :multipassWaypointPathRunnable

        def jfields_org_allbinary_game_layer_MultipassWaypointPathRunnable_FirstRunnable
            @multipassWaypointPathRunnable = nil unless instance_variable_defined?(:@multipassWaypointPathRunnable)
        end
        

        def initialize(multipassWaypointPathRunnable)
            super()
            jfields_org_allbinary_game_layer_MultipassWaypointPathRunnable_FirstRunnable
            @multipassWaypointPathRunnable = multipassWaypointPathRunnable
        end
        

        def run()
            @multipassWaypointPathRunnable.processFirstRunnable()
        end
        java_overload :run, 0
    end
    #    private boolean first = true;
    class SecondRunnable < ::Org::Allbinary::ThreadPackage::ARunnable
        attr_accessor :multipassWaypointPathRunnable

        def jfields_org_allbinary_game_layer_MultipassWaypointPathRunnable_SecondRunnable
            @multipassWaypointPathRunnable = nil unless instance_variable_defined?(:@multipassWaypointPathRunnable)
        end
        

        def initialize(multipassWaypointPathRunnable)
            super()
            jfields_org_allbinary_game_layer_MultipassWaypointPathRunnable_SecondRunnable
            @multipassWaypointPathRunnable = multipassWaypointPathRunnable
        end
        

        def run()
            @multipassWaypointPathRunnable.processSecondRunnable()
        end
        java_overload :run, 0
    end
    class EndRunnable < ::Org::Allbinary::ThreadPackage::ARunnable
        attr_accessor :multipassWaypointPathRunnable

        def jfields_org_allbinary_game_layer_MultipassWaypointPathRunnable_EndRunnable
            @multipassWaypointPathRunnable = nil unless instance_variable_defined?(:@multipassWaypointPathRunnable)
        end
        

        def initialize(multipassWaypointPathRunnable)
            super()
            jfields_org_allbinary_game_layer_MultipassWaypointPathRunnable_EndRunnable
            @multipassWaypointPathRunnable = multipassWaypointPathRunnable
        end
        

        def run()
            @multipassWaypointPathRunnable.processEndRunnable()
        end
        java_overload :run, 0
    end

    def jfields_org_allbinary_game_layer_MultipassWaypointPathRunnable
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @basicArrayListUtil = ::Org::Allbinary::Util::BasicArrayListUtil.getInstance()
        @multipassState = ::Org::Allbinary::Media::Graphics::Geography::Pathfinding::MultipassState.new()
        @done = false
        @list = @basicArrayListUtil.getImmutableInstance()
        @pathFindingInfo = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
        @FIRST_RUNNABLE = FirstRunnable.new(self)
        @SECOND_RUNNABLE = SecondRunnable.new(self)
        @END_RUNNABLE = EndRunnable.new(self)
        @ALREADY_ENDED_RUNNABLE = Class.new(::Org::Allbinary::ThreadPackage::ARunnable.is_a?(Class) ? ::Org::Allbinary::ThreadPackage::ARunnable : Object) do
        include(::Org::Allbinary::ThreadPackage::ARunnable) unless ::Org::Allbinary::ThreadPackage::ARunnable.is_a?(Class)
        

        def run()
            raise RuntimeError.new()
        end
        java_overload :run, 0
    end.new()
        @currentPassRunnable = @FIRST_RUNNABLE
    end
    

    def initialize()
        super()
        jfields_org_allbinary_game_layer_MultipassWaypointPathRunnable
    end
    

    def setRunning(isRunning)
        @runningP = isRunning
        if @runningP
            self.reset()
            @done = false
        end
    end
    java_overload :setRunning, 1
    

    def run()
        logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        begin
            @currentPassRunnable.run()
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
            self.setRunning(false)
        end
    end
    java_overload :run, 0
    

    def reset2()
        @multipassState.step = 0
        @multipassState.iteration = 0
        @multipassState.iteration2 = 0
        @pathFindingInfo = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
    end
    java_overload :reset2, 0
    

    def finish()
        self.reset2()
        @currentPassRunnable = @ALREADY_ENDED_RUNNABLE
        @done = true
    end
    java_overload :finish, 0
    

    def isDone()
        return @done
    end
    java_overload :isDone, 0
    

    def reset()
        self.reset2()
        @currentPassRunnable = @FIRST_RUNNABLE
        @done = false
    end
    java_overload :reset, 0
    

    def processFirstRunnable()
        begin
            @pathFindingLayer.getWaypointRunnableLogHelper().start(@pathFindingLayer)
            self.reset2()
            geographicMapCellPosition = @pathFindingLayer.getCurrentGeographicMapCellPosition()
            if geographicMapCellPosition == nil
                raise StandardError.new("Should never be running here")
            end
            @pathFindingInfo = @targetPathFindingLayer.getWaypointBehavior().getWaypoint().getPathFindingInfo(geographicMapCellPosition)
            localPathFindingInfo = @pathFindingInfo
            @list = @targetPathFindingLayer.getWaypointBehavior().getWaypoint().getPathsList(geographicMapCellPosition, localPathFindingInfo, @multipassState)
            if @list != @basicArrayListUtil.getImmutableInstance()
                @END_RUNNABLE.run()
            else
                @currentPassRunnable = @SECOND_RUNNABLE
            end
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
            self.setRunning(false)
            self.finish()
        end
    end
    java_overload :processFirstRunnable, 0
    

    def processSecondRunnable()
        begin
            geographicMapCellPosition = @pathFindingLayer.getCurrentGeographicMapCellPosition()
            localPathFindingInfo = @pathFindingInfo
            @list = @targetPathFindingLayer.getWaypointBehavior().getWaypoint().getPathsList(geographicMapCellPosition, localPathFindingInfo, @multipassState)
            if @list != @basicArrayListUtil.getImmutableInstance()
                @END_RUNNABLE.run()
            end
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
            self.setRunning(false)
            self.finish()
        end
    end
    java_overload :processSecondRunnable, 0
    

    def processEndRunnable()
        begin
            waypointBehavior = @pathFindingLayer.getWaypointBehavior()
            waypointBehavior.setWaypointPathsList(@list)
            @pathFindingLayer.getWaypointRunnableLogHelper().end_(@pathFindingLayer)
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
            self.setRunning(false)
        end
        self.finish()
    end
    java_overload :processEndRunnable, 0
end

module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding; autoload :MultipassState, "org/allbinary/media/graphics/geography/pathfinding/MultipassState" unless const_defined?(:MultipassState, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding; autoload :PathFindingInfo, "org/allbinary/media/graphics/geography/pathfinding/PathFindingInfo" unless const_defined?(:PathFindingInfo, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil" unless const_defined?(:BasicArrayListUtil, false); end; end; end
autoload :WaypointBehaviorBase, "org/allbinary/game/layer/WaypointBehaviorBase" unless const_defined?(:WaypointBehaviorBase, false)
require "java/lang/Runnable"

end; end; end; end

