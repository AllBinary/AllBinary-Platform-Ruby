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
# package org.allbinary.game.ag.layer.hud.basic

# require "javax/microedition/lcdui/Font"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/canvas/Processor"
require "org/allbinary/game/ag/layer/hud/basic/notification/GameNotificationHud"
require "org/allbinary/graphics/font/UpdateMyFontInterface"

class PlayerGameNotificationHud < GameNotificationHud
    include UpdateMyFontInterface
    attr_accessor :gameTickTimeDelayHelper, :EMPTY_STRING, :displayInfo, :timeDelayHelper, :circularIndexUtil, :gameNotification, :permanentGameNotification, :setAndRemoveProcessor, :nextUnremoveableProcessor, :processor, :PERMANENT_GAME_NOTIFICATION, :lastString, :string, :point, :width
    class SetAndRemoveProcessor < Processor
        attr_accessor :updateMeasurementProcessor

        def initialize_fields
            @updateMeasurementProcessor = nil
        end
        

        def initialize(updateMeasurementProcessor)
            super()
            initialize_fields
            @updateMeasurementProcessor = updateMeasurementProcessor
        end
        

        # throws Exception
        def process()
            @updateMeasurementProcessor.setAndRemoveProcess()
        end
    end
    class NextUnremoveableProcessor < Processor
        attr_accessor :updateMeasurementProcessor

        def initialize_fields
            @updateMeasurementProcessor = nil
        end
        

        def initialize(updateMeasurementProcessor)
            super()
            initialize_fields
            @updateMeasurementProcessor = updateMeasurementProcessor
        end
        

        # throws Exception
        def process()
            @updateMeasurementProcessor.setNextUnremoveableProcess()
        end
    end

    def initialize_fields
        @gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
        @EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING
        @displayInfo = DisplayInfoSingleton.getInstance()
        @timeDelayHelper = TimeDelayHelper.new(0)
        @circularIndexUtil = nil
        @gameNotification = GameNotification.new()
        @permanentGameNotification = GameNotification.new()
        @setAndRemoveProcessor = SetAndRemoveProcessor.new(self)
        @nextUnremoveableProcessor = NextUnremoveableProcessor.new(self)
        @processor = Processor.getInstance()
        @PERMANENT_GAME_NOTIFICATION = "Permanent Game Notification: "
        @lastString = StringUtil.getInstance().EMPTY_STRING
        @string = @EMPTY_STRING
        @point = CustomGPoint::NULL_CUSTOM_POINT
        @width = 0
    end
    

    def initialize(location, direction, bufferZone, basicColor)
        super(location, direction, bufferZone, basicColor)
        initialize_fields
        @circularIndexUtil = CircularIndexUtil.createInstance(0)
        gameNotificationEventHandler = GameNotificationEventHandler.getInstance()
        gameNotificationEventHandler.removeAllListeners()
        gameNotificationEventHandler.addListenerInterface(self)
    end
    

    def updateMeasurement(graphics)
        begin
            super(graphics)
            font = graphics.getFont()
            @width = font.stringWidth(@string)
            @processor.process()
            @processor = Processor.getInstance()
        rescue StandardError => e
            logUtil = LogUtil.getInstance()
            commonStrings = CommonStrings.getInstance()
            logUtil.put(commonStrings.EXCEPTION, self, commonStrings.UPDATE, e)
        end
    end
    

    def getPoint(x, y)
        @point = CustomGPoint.getInstance3(0, 0)
        @point.setX(x)
        @point.setY(y)
        return @point
    end
    

    def add(string, seconds, basicColor, permanent)
        if permanent
            if @lastString != string
                @lastString = string
                @logUtil.putF(StringMaker.new().append(@PERMANENT_GAME_NOTIFICATION).append(string).to_s, self, @commonStrings.ADD)
            end
            @permanentGameNotification.add(string, seconds, basicColor)
            @circularIndexUtil.setSize(@permanentGameNotification.getSize())
        else
            @gameNotification.add(string, seconds, basicColor)
        end
    end
    

    # throws Exception
    def processTick()
        if @timeDelayHelper.isTime(@gameTickTimeDelayHelper.startTime)
            gameAdState = GameAdStateFactory.getInstance().getCurrentInstance()
            if gameAdState.isShowingAtLocation(self.getLocation())
                @offsetY = -54
            else
                @offsetY = 0
            end
            if @gameNotification.getSize() > 0
                self.setAndRemove()
            elsif @permanentGameNotification.getSize() > 0
                self.setNextUnremoveable()
            else
                @string = @EMPTY_STRING
            end
        end
    end
    

    # throws Exception
    def setAndRemove()
        @string = @gameNotification.stringList.removeAt(0)
        @processor = @setAndRemoveProcessor
    end
    

    # throws Exception
    def setAndRemoveProcess()
        self.setX((@displayInfo.getLastWidth() - @width) >> 1)
        @point.setX(self.getX())
        @point.setY(self.getY())
        time = @gameNotification.timeList.removeAt(0)
        iTime = time.to_i * 1000
        if iTime == 0
            iTime = 500
        end
        @timeDelayHelper.delay = iTime
        self.setBasicColorP(@gameNotification.colorList.removeAt(0))
    end
    

    # throws Exception
    def setNextUnremoveable()
        index = @circularIndexUtil.getIndex()
        @string = @permanentGameNotification.stringList.objectArray[index]
        @processor = @nextUnremoveableProcessor
    end
    

    # throws Exception
    def setNextUnremoveableProcess()
        index = @circularIndexUtil.getIndex()
        self.setX((@displayInfo.getLastWidth() - @width) >> 1)
        @point.setX(self.getX())
        @point.setY(self.getY())
        time = @permanentGameNotification.timeList.objectArray[index]
        @timeDelayHelper.delay = time.to_i * 1000
        self.setBasicColorP(@permanentGameNotification.colorList.objectArray[index])
        @circularIndexUtil.next_()
    end
    

    def clear()
        @gameNotification.clear()
        @permanentGameNotification.clear()
    end
    

    def paint(graphics)
        @myFontProcessor.process(graphics)
        self.class.superclass.instance_method(:paintString).bind(self).call(graphics, @string)
    end
end

require "org/allbinary/business/advertisement/GameAdStateFactory"
require "org/allbinary/game/GameAdState"
require "org/allbinary/game/ag/layer/hud/basic/notification/GameNotification"
require "org/allbinary/game/layer/hud/event/GameNotificationEventHandler"
require "org/allbinary/graphics/CustomGPoint"
require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/time/GameTickTimeDelayHelper"
require "org/allbinary/time/GameTickTimeDelayHelperFactory"
require "org/allbinary/time/TimeDelayHelper"
require "org/allbinary/util/CircularIndexUtil"

