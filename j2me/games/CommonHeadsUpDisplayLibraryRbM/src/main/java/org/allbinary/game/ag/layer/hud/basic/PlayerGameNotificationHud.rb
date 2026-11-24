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

require "java/lang/JavaOverload"
require "org/allbinary/game/ag/layer/hud/basic/notification/GameNotificationHud"
require "org/allbinary/graphics/font/UpdateMyFontInterface"

module ::Org; module Allbinary; module Game; module Ag; module Layer; module Hud; module Basic

class PlayerGameNotificationHud < ::Org::Allbinary::Game::Ag::Layer::Hud::Basic::Notification::GameNotificationHud
    include ::Org::Allbinary::Graphics::Font::UpdateMyFontInterface
    attr_accessor :gameTickTimeDelayHelper, :EMPTY_STRING, :displayInfo, :timeDelayHelper, :circularIndexUtil, :gameNotification, :permanentGameNotification, :setAndRemoveProcessor, :nextUnremoveableProcessor, :processor, :PERMANENT_GAME_NOTIFICATION, :lastString, :string, :point, :width

    def jfields_org_allbinary_game_ag_layer_hud_basic_PlayerGameNotificationHud
        @gameTickTimeDelayHelper = ::Org::Allbinary::TimePackage::GameTickTimeDelayHelperFactory.getInstance()
        @EMPTY_STRING = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        @displayInfo = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
        @timeDelayHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(0)
        @circularIndexUtil = nil unless instance_variable_defined?(:@circularIndexUtil)
        @gameNotification = ::Org::Allbinary::Game::Ag::Layer::Hud::Basic::Notification::GameNotification.new()
        @permanentGameNotification = ::Org::Allbinary::Game::Ag::Layer::Hud::Basic::Notification::GameNotification.new()
        @setAndRemoveProcessor = SetAndRemoveProcessor.new(self)
        @nextUnremoveableProcessor = NextUnremoveableProcessor.new(self)
        @processor = ::Org::Allbinary::Canvas::Processor.getInstance()
        @PERMANENT_GAME_NOTIFICATION = "Permanent Game Notification: "
        @lastString = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        @string = @EMPTY_STRING
        @point = ::Org::Allbinary::Graphics::CustomGPoint::NULL_CUSTOM_POINT
        @width = 0 unless instance_variable_defined?(:@width)
    end
    

    def initialize(location, direction, bufferZone, basicColor)
        super(location, direction, bufferZone, basicColor)
        jfields_org_allbinary_game_ag_layer_hud_basic_PlayerGameNotificationHud
        @circularIndexUtil = ::Org::Allbinary::Util::CircularIndexUtil.createInstance(0)
        gameNotificationEventHandler = ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEventHandler.getInstance()
        gameNotificationEventHandler.removeAllListeners()
        gameNotificationEventHandler.addListenerInterface(self)
    end
    

    def updateMeasurement(graphics)
        begin
            PlayerGameNotificationHud.superclass.java_super_method(:updateMeasurement, 1).bind(self).call(graphics)
            font = graphics.getFont()
            @width = font.stringWidth(@string)
            @processor.process()
            @processor = ::Org::Allbinary::Canvas::Processor.getInstance()
        rescue StandardError => e
            logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            logUtil.put(commonStrings.EXCEPTION, self, commonStrings.UPDATE, e)
        end
    end
    java_overload :updateMeasurement, 1
    

    def getPoint(x, y)
        @point = ::Org::Allbinary::Graphics::CustomGPoint.getInstance3(0, 0)
        @point.setX(x)
        @point.setY(y)
        return @point
    end
    java_overload :getPoint, 2
    

    def add(string, seconds, basicColor, permanent)
        if permanent
            if @lastString != string
                @lastString = string
                @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@PERMANENT_GAME_NOTIFICATION).append(string).to_s, self, @commonStrings.ADD)
            end
            @permanentGameNotification.add(string, seconds, basicColor)
            @circularIndexUtil.setSize(@permanentGameNotification.getSize())
        else
            @gameNotification.add(string, seconds, basicColor)
        end
    end
    java_overload :add, 4
    

    # throws Exception
    def processTick()
        if @timeDelayHelper.isTime(@gameTickTimeDelayHelper.startTime)
            gameAdState = ::Org::Allbinary::Business::Advertisement::GameAdStateFactory.getInstance().getCurrentInstance()
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
    java_overload :processTick, 0
    

    # throws Exception
    def setAndRemove()
        @string = @gameNotification.stringList.removeAt(0)
        @processor = @setAndRemoveProcessor
    end
    java_overload :setAndRemove, 0
    

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
    java_overload :setAndRemoveProcess, 0
    

    # throws Exception
    def setNextUnremoveable()
        index = @circularIndexUtil.getIndex()
        @string = @permanentGameNotification.stringList.objectArray[index]
        @processor = @nextUnremoveableProcessor
    end
    java_overload :setNextUnremoveable, 0
    

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
    java_overload :setNextUnremoveableProcess, 0
    

    def clear()
        @gameNotification.clear()
        @permanentGameNotification.clear()
    end
    java_overload :clear, 0
    

    def paint(graphics)
        @myFontProcessor.process(graphics)
        PlayerGameNotificationHud.superclass.java_super_method(:paintString, 2).bind(self).call(graphics, @string)
    end
    java_overload :paint, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Business; module Advertisement; autoload :GameAdStateFactory, "org/allbinary/business/advertisement/GameAdStateFactory" unless const_defined?(:GameAdStateFactory, false); end; end; end; end
module ::Org; module Allbinary; module Canvas; autoload :Processor, "org/allbinary/canvas/Processor" unless const_defined?(:Processor, false); end; end; end
module ::Org; module Allbinary; module Game; autoload :GameAdState, "org/allbinary/game/GameAdState" unless const_defined?(:GameAdState, false); end; end; end
module ::Org; module Allbinary; module Game; module Ag; module Layer; module Hud; module Basic; module Notification; autoload :GameNotification, "org/allbinary/game/ag/layer/hud/basic/notification/GameNotification" unless const_defined?(:GameNotification, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Hud; module Event; autoload :GameNotificationEventHandler, "org/allbinary/game/layer/hud/event/GameNotificationEventHandler" unless const_defined?(:GameNotificationEventHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :CustomGPoint, "org/allbinary/graphics/CustomGPoint" unless const_defined?(:CustomGPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :GameTickTimeDelayHelper, "org/allbinary/time/GameTickTimeDelayHelper" unless const_defined?(:GameTickTimeDelayHelper, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :GameTickTimeDelayHelperFactory, "org/allbinary/time/GameTickTimeDelayHelperFactory" unless const_defined?(:GameTickTimeDelayHelperFactory, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :CircularIndexUtil, "org/allbinary/util/CircularIndexUtil" unless const_defined?(:CircularIndexUtil, false); end; end; end
autoload :NextUnremoveableProcessor, "org/allbinary/game/ag/layer/hud/basic/NextUnremoveableProcessor" unless const_defined?(:NextUnremoveableProcessor, false)
autoload :SetAndRemoveProcessor, "org/allbinary/game/ag/layer/hud/basic/SetAndRemoveProcessor" unless const_defined?(:SetAndRemoveProcessor, false)

end; end; end; end; end; end; end

