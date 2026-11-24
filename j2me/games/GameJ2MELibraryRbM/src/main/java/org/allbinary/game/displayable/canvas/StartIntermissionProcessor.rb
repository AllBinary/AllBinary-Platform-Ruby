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
require "org/allbinary/canvas/Processor"

module ::Org; module Allbinary; module Game; module Displayable; module Canvas

class StartIntermissionProcessor < ::Org::Allbinary::Canvas::Processor
    attr_accessor :logUtil, :commonStrings, :gameCanvas, :WAIT

    def jfields_org_allbinary_game_displayable_canvas_StartIntermissionProcessor
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @gameCanvas = nil unless instance_variable_defined?(:@gameCanvas)
        @WAIT = 5000
    end
    

    def initialize(gameCanvas)
        super()
        jfields_org_allbinary_game_displayable_canvas_StartIntermissionProcessor
        @gameCanvas = gameCanvas
    end
    

    # throws Exception
    def process()
        if @gameCanvas.getStartIntermissionInterface().getTimeDelayHelper().isElapsedTNT(@WAIT)
            @logUtil.putF("Intermission End", self, @commonStrings.PROCESS)
            @gameCanvas.getStartIntermissionInterface().setEnabled(false)
        end
    end
    java_overload :process, 0
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :AllBinaryGameCanvas, "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas" unless const_defined?(:AllBinaryGameCanvas, false)

end; end; end; end; end

