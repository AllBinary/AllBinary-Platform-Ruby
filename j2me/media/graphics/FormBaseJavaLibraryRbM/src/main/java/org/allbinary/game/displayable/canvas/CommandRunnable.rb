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
require "java/lang/Runnable"

module ::Org; module Allbinary; module Game; module Displayable; module Canvas

class CommandRunnable
    include ::Java::Lang::Runnable
    attr_accessor :logUtil, :commonStrings, :commandFormInputProcessor, :command

    def jfields_org_allbinary_game_displayable_canvas_CommandRunnable
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @commandFormInputProcessor = nil unless instance_variable_defined?(:@commandFormInputProcessor)
        @command = nil unless instance_variable_defined?(:@command)
    end
    

    def initialize(commandFormInputProcessor, command)
        jfields_org_allbinary_game_displayable_canvas_CommandRunnable
        @commandFormInputProcessor = commandFormInputProcessor
        @command = command
    end
    

    def run()
        begin
            @logUtil.putF(@commonStrings.START_RUNNABLE, self, @commonStrings.RUN)
            canvas = @commandFormInputProcessor.getCanvas()
            commandListener = canvas.getCustomCommandListener()
            commandListener.commandAction(@command, canvas)
            @logUtil.putF(@commonStrings.END_RUNNABLE, self, @commonStrings.RUN)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.RUN, e)
        end
    end
    java_overload :run, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Command, "javax/microedition/lcdui/Command" unless const_defined?(:Command, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :CommandListener, "javax/microedition/lcdui/CommandListener" unless const_defined?(:CommandListener, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :MyCanvas, "org/allbinary/graphics/displayable/MyCanvas" unless const_defined?(:MyCanvas, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :CommandFormInputProcessor, "org/allbinary/game/displayable/canvas/CommandFormInputProcessor" unless const_defined?(:CommandFormInputProcessor, false)

end; end; end; end; end

