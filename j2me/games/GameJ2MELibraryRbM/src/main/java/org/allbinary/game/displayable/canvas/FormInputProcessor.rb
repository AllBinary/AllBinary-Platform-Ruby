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
# package org.allbinary.game.displayable.canvas

require "java/lang/JavaOverload"
require "org/allbinary/game/input/InputProcessor"

module ::Org; module Allbinary; module Game; module Displayable; module Canvas

class FormInputProcessor < ::Org::Allbinary::Game::Input::InputProcessor
    attr_accessor :logUtil, :commonStrings, :gameKeyEventFactory, :downKeyEventHandler, :upGameKeyEventHandler, :inputFactory, :platformKeyFactory, :allBinaryGameCanvas

    def jfields_org_allbinary_game_displayable_canvas_FormInputProcessor
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @gameKeyEventFactory = ::Org::Allbinary::Game::Input::Event::GameKeyEventFactory.getInstance()
        @downKeyEventHandler = ::Org::Allbinary::Game::Input::Event::DownKeyEventHandler.getInstance()
        @upGameKeyEventHandler = ::Org::Allbinary::Game::Input::Event::UpGameKeyEventHandler.getInstance()
        @inputFactory = ::Org::Allbinary::Game::Input::InputFactory.getInstance()
        @platformKeyFactory = ::Org::Allbinary::Game::Input::PlatformKeyFactory.getInstance()
        @allBinaryGameCanvas = nil unless instance_variable_defined?(:@allBinaryGameCanvas)
    end
    

    def initialize(allBinaryGameCanvas)
        super()
        jfields_org_allbinary_game_displayable_canvas_FormInputProcessor
        @allBinaryGameCanvas = allBinaryGameCanvas
    end
    

    def keyPressedByDevice(keyCode, deviceId)
        begin
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@inputFactory.KEY_CODE_LABEL).appendint(keyCode).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE).append(@inputFactory.DEVICE_ID_LABEL).appendint(deviceId).to_s, self, @gameInputStrings.KEY_PRESSED)
            input = @inputFactory.getInstanceById(keyCode)
            gameKeyEvent = @gameKeyEventFactory.getInstanceForInput(@allBinaryGameCanvas, input)
            @downKeyEventHandler.fireEventForGameKeyEvent(gameKeyEvent)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @gameInputStrings.ADD_KEY_EVENT, e)
        end
    end
    java_overload :keyPressedByDevice, 2
    

    def keyReleasedByDevice(canvas, keyCode, deviceId)
        begin
            input = @inputFactory.getInstanceById(keyCode)
            if @platformKeyFactory.isEnter(input)
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@inputFactory.KEY_CODE_LABEL).appendint(keyCode).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE).append(@inputFactory.DEVICE_ID_LABEL).appendint(deviceId).to_s, self, @gameInputStrings.KEY_RELEASED)
                gameKey = ::Org::Allbinary::Game::Input::GameKeyFactory.getInstance().KEY_NUM0
                gameKeyEventSourceInterface = canvas
                gameKeyEvent = @gameKeyEventFactory.getInstanceForInput(gameKeyEventSourceInterface, gameKey)
                @upGameKeyEventHandler.fireEvent(gameKeyEvent)
                @upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @gameInputStrings.ADD_KEY_EVENT, e)
        end
    end
    java_overload :keyReleasedByDevice, 3
end

module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameKey, "org/allbinary/game/input/GameKey" unless const_defined?(:GameKey, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameKeyEventSourceInterface, "org/allbinary/game/input/GameKeyEventSourceInterface" unless const_defined?(:GameKeyEventSourceInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameKeyFactory, "org/allbinary/game/input/GameKeyFactory" unless const_defined?(:GameKeyFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :Input, "org/allbinary/game/input/Input" unless const_defined?(:Input, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :InputFactory, "org/allbinary/game/input/InputFactory" unless const_defined?(:InputFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :PlatformKeyFactory, "org/allbinary/game/input/PlatformKeyFactory" unless const_defined?(:PlatformKeyFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :DownKeyEventHandler, "org/allbinary/game/input/event/DownKeyEventHandler" unless const_defined?(:DownKeyEventHandler, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent" unless const_defined?(:GameKeyEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEventFactory, "org/allbinary/game/input/event/GameKeyEventFactory" unless const_defined?(:GameKeyEventFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :UpGameKeyEventHandler, "org/allbinary/game/input/event/UpGameKeyEventHandler" unless const_defined?(:UpGameKeyEventHandler, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :AllBinaryGameCanvas, "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas" unless const_defined?(:AllBinaryGameCanvas, false)

end; end; end; end; end

