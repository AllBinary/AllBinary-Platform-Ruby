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

require "org/allbinary/thread/ARunnable"
require "org/allbinary/game/layer/WaypointPathRunnableBase"

class MultipassWaypointPathRunnable < WaypointPathRunnableBase
    attr_accessor :logUtil, :basicArrayListUtil, :multipassState, :done, :list, :pathFindingInfo, :FIRST_RUNNABLE, :SECOND_RUNNABLE, :END_RUNNABLE, :ALREADY_ENDED_RUNNABLE, :currentPassRunnable
    class FirstRunnable < ARunnable
        attr_accessor :multipassWaypointPathRunnable

        def initialize_fields
            @multipassWaypointPathRunnable = nil
        end
        

        def initialize(multipassWaypointPathRunnable)
            super()
            initialize_fields
            @multipassWaypointPathRunnable = multipassWaypointPathRunnable
        end
        

        def run()
            @multipassWaypointPathRunnable.processFirstRunnable()
        end
    end
    #    private boolean first = true;
    class SecondRunnable < ARunnable
        attr_accessor :multipassWaypointPathRunnable

        def initialize_fields
            @multipassWaypointPathRunnable = nil
        end
        

        def initialize(multipassWaypointPathRunnable)
            super()
            initialize_fields
            @multipassWaypointPathRunnable = multipassWaypointPathRunnable
        end
        

        def run()
            @multipassWaypointPathRunnable.processSecondRunnable()
        end
    end
    class EndRunnable < ARunnable
        attr_accessor :multipassWaypointPathRunnable

        def initialize_fields
            @multipassWaypointPathRunnable = nil
        end
        

        def initialize(multipassWaypointPathRunnable)
            super()
            initialize_fields
            @multipassWaypointPathRunnable = multipassWaypointPathRunnable
        end
        

        def run()
            @multipassWaypointPathRunnable.processEndRunnable()
        end
    end

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @basicArrayListUtil = BasicArrayListUtil.getInstance()
        @multipassState = MultipassState.new()
        @done = false
        @list = @basicArrayListUtil.getImmutableInstance()
        @pathFindingInfo = NullUtil.getInstance().NULL_OBJECT
        @FIRST_RUNNABLE = FirstRunnable.new(self)
        @SECOND_RUNNABLE = SecondRunnable.new(self)
        @END_RUNNABLE = EndRunnable.new(self)
        @ALREADY_ENDED_RUNNABLE = Class.new(ARunnable.is_a?(Class) ? ARunnable : Object) do
        include(ARunnable) unless ARunnable.is_a?(Class)
        

        def run()
            raise RuntimeError.new()
        end
    end.new()
        @currentPassRunnable = @FIRST_RUNNABLE
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def setRunning(isRunning)
        @runningP = isRunning
        if @runningP
            self.reset()
            @done = false
        end
    end
    

    def run()
        logUtil = LogUtil.getInstance()
        begin
            @currentPassRunnable.run()
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
            self.setRunning(false)
        end
    end
    

    def reset2()
        @multipassState.step = 0
        @multipassState.iteration = 0
        @multipassState.iteration2 = 0
        @pathFindingInfo = NullUtil.getInstance().NULL_OBJECT
    end
    

    def finish()
        self.reset2()
        @currentPassRunnable = @ALREADY_ENDED_RUNNABLE
        @done = true
    end
    

    def isDone()
        return @done
    end
    

    def reset()
        self.reset2()
        @currentPassRunnable = @FIRST_RUNNABLE
        @done = false
    end
    

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
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
            self.setRunning(false)
            self.finish()
        end
    end
    

    def processSecondRunnable()
        begin
            geographicMapCellPosition = @pathFindingLayer.getCurrentGeographicMapCellPosition()
            localPathFindingInfo = @pathFindingInfo
            @list = @targetPathFindingLayer.getWaypointBehavior().getWaypoint().getPathsList(geographicMapCellPosition, localPathFindingInfo, @multipassState)
            if @list != @basicArrayListUtil.getImmutableInstance()
                @END_RUNNABLE.run()
            end
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
            self.setRunning(false)
            self.finish()
        end
    end
    

    def processEndRunnable()
        begin
            waypointBehavior = @pathFindingLayer.getWaypointBehavior()
            waypointBehavior.setWaypointPathsList(@list)
            @pathFindingLayer.getWaypointRunnableLogHelper().end_(@pathFindingLayer)
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
            self.setRunning(false)
        end
        self.finish()
    end
end

require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition"
require "org/allbinary/media/graphics/geography/pathfinding/MultipassState"
require "org/allbinary/media/graphics/geography/pathfinding/PathFindingInfo"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListUtil"
require "org/allbinary/game/layer/WaypointBehaviorBase"
require "java/lang/Runnable"

