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
# package org.allbinary.input.motion.button

require "java/lang/JavaOverload"
require "org/allbinary/game/input/GameKeyEventSourceInterface"
require "org/allbinary/game/input/Input"

module ::Org; module Allbinary; module Input; module Motion; module Button

class TouchButtonInput < ::Org::Allbinary::Game::Input::Input
    include ::Org::Allbinary::Game::Input::GameKeyEventSourceInterface
    attr_accessor :logUtil, :gameKeyEventFactory, :TOUCH_BUTTON_SOURCE_ID, :gameKeyEvent

    def jfields_org_allbinary_input_motion_button_TouchButtonInput
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @gameKeyEventFactory = ::Org::Allbinary::Game::Input::Event::GameKeyEventFactory.getInstance()
        @TOUCH_BUTTON_SOURCE_ID = @gameKeyEventFactory.TOUCH_BUTTON_SOURCE_ID
        @gameKeyEvent = ::Org::Allbinary::Game::Input::Event::GameKeyEvent::NONE
    end
    

    def initialize(id, name)
        super(id, name)
        jfields_org_allbinary_input_motion_button_TouchButtonInput
        inputFactory = ::Org::Allbinary::Game::Input::InputFactory.getInstance()
        inputFactory.add(self.getId(), self)
    end
    

    def update(inputToGameKeyMapping)
        begin
            gameKey = inputToGameKeyMapping.getInstance(self.getId())
            @gameKeyEvent = @gameKeyEventFactory.getInstanceForInput(self, gameKey)
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.UPDATE, e)
        end
    end
    java_overload :update, 1
    

    def getSourceId()
        return @TOUCH_BUTTON_SOURCE_ID
    end
    java_overload :getSourceId, 0
    

    def getGameKeyEvent()
        return @gameKeyEvent
    end
    java_overload :getGameKeyEvent, 0
end

module ::Org; module Allbinary; module Game; module Input; autoload :GameKey, "org/allbinary/game/input/GameKey" unless const_defined?(:GameKey, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :InputFactory, "org/allbinary/game/input/InputFactory" unless const_defined?(:InputFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent" unless const_defined?(:GameKeyEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEventFactory, "org/allbinary/game/input/event/GameKeyEventFactory" unless const_defined?(:GameKeyEventFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Mapping; autoload :InputToGameKeyMapping, "org/allbinary/game/input/mapping/InputToGameKeyMapping" unless const_defined?(:InputToGameKeyMapping, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

end; end; end; end; end

