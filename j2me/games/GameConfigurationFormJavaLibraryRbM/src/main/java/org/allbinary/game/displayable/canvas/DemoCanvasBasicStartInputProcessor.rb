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
require "org/allbinary/game/displayable/canvas/BasicMenuInputProcessor"

module ::Org; module Allbinary; module Game; module Displayable; module Canvas

class DemoCanvasBasicStartInputProcessor < BasicMenuInputProcessor
    

    def initialize(gameKeyEventList, gameCanvas)
        super(gameKeyEventList, -1, gameCanvas)
    end
    

    # throws Exception
    def processInputList()
        list = self.getGameKeyEventList()
        size = list.size()
        gameKeyEvent = nil
        (0...size).each do |index|
            gameKeyEvent = list.objectArray[index]
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Start GameKey: ").append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(gameKeyEvent)).to_s, self, ::Org::Allbinary::Game::Input::GameInputStrings.getInstance().PROCESS_INPUT)
        end
        self.getCanvas().getCustomCommandListener().commandAction(::Org::Allbinary::Game::Commands::GameCommandsFactory.getInstance().START_COMMAND, ::Javax::Microedition::Lcdui::NullCanvas::NULL_CANVAS)
        return size
    end
    java_overload :processInputList, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :NullCanvas, "javax/microedition/lcdui/NullCanvas" unless const_defined?(:NullCanvas, false); end; end; end
module ::Org; module Allbinary; module Canvas; autoload :RunnableCanvas, "org/allbinary/canvas/RunnableCanvas" unless const_defined?(:RunnableCanvas, false); end; end; end
module ::Org; module Allbinary; module Game; module Commands; autoload :GameCommandsFactory, "org/allbinary/game/commands/GameCommandsFactory" unless const_defined?(:GameCommandsFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameInputStrings, "org/allbinary/game/input/GameInputStrings" unless const_defined?(:GameInputStrings, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent" unless const_defined?(:GameKeyEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end

end; end; end; end; end

