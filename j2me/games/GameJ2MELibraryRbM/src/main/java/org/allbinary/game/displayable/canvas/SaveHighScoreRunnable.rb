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

class SaveHighScoreRunnable
    include ::Java::Lang::Runnable
    attr_accessor :progressCanvas, :isLast, :textBox

    def jfields_org_allbinary_game_displayable_canvas_SaveHighScoreRunnable
        @progressCanvas = ::Org::Allbinary::Graphics::Canvas::Transition::Progress::ProgressCanvasFactory.getInstance()
        @isLast = nil unless instance_variable_defined?(:@isLast)
        @textBox = nil unless instance_variable_defined?(:@textBox)
    end
    

    def initialize(isLast, textBox)
        jfields_org_allbinary_game_displayable_canvas_SaveHighScoreRunnable
        @isLast = isLast
        @textBox = textBox
    end
    

    def run()
        logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        begin
            if @isLast
                @textBox.submit()
            else
                @textBox.saveHighScore()
            end
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            logUtil.put(commonStrings.EXCEPTION, self, "run", e)
            @progressCanvas.end_()
        end
    end
    java_overload :run, 0
end

module ::Org; module Allbinary; module Game; module Score; module Displayable; autoload :HighScoreTextBox, "org/allbinary/game/score/displayable/HighScoreTextBox" unless const_defined?(:HighScoreTextBox, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress; autoload :ProgressCanvas, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas" unless const_defined?(:ProgressCanvas, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress; autoload :ProgressCanvasFactory, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" unless const_defined?(:ProgressCanvasFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

end; end; end; end; end

