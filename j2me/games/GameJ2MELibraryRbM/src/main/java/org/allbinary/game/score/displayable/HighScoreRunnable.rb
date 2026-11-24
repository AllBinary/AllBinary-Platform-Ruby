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
# package org.allbinary.game.score.displayable

require "java/lang/JavaOverload"
require "org/allbinary/thread/ARunnable"

module ::Org; module Allbinary; module Game; module Score; module Displayable

class HighScoreRunnable < ::Org::Allbinary::ThreadPackage::ARunnable
    attr_accessor :highScoresCanvas

    def jfields_org_allbinary_game_score_displayable_HighScoreRunnable
        @highScoresCanvas = nil unless instance_variable_defined?(:@highScoresCanvas)
    end
    

    def initialize(highScoresCanvas)
        super()
        jfields_org_allbinary_game_score_displayable_HighScoreRunnable
        @highScoresCanvas = highScoresCanvas
    end
    

    def run()
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        highScoresCanvas = @highScoresCanvas
        begin
            isHTML = ::Org::Allbinary::J2MEUtil.isHTML()
            if !isHTML
                while !highScoresCanvas.hasPainted
                end
                highScoresCanvas.hasPainted = false
            end
            stringMaker = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            systemWrapper = ::Org::Allbinary::Logic::ABSystemWrapper.getInstance()
            currentTimeMillis = systemWrapper.currentTimeMillis()
            logUtil.putF(stringMaker.append("HighScoresCanvas - Request repaint to be sure: ").appendlong(currentTimeMillis).to_s, self, commonStrings.RUN)
            highScoresCanvas.repaintBehavior.onChangeRepaint(highScoresCanvas)
            if !isHTML
                while !highScoresCanvas.hasPainted
                end
            end
            stringMaker.delete(0, stringMaker.length())
            logUtil.putF(stringMaker.append("HighScoresCanvas - Now that the canvas has completed repaint go ahead and fetch the scores: ").appendlong(currentTimeMillis).to_s, self, commonStrings.RUN)
            highScoresCanvas.executeUpdate()
        rescue StandardError => e
            logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
        end
    end
    java_overload :run, 0
end

module ::Org; module Allbinary; autoload :J2MEUtil, "org/allbinary/J2MEUtil" unless const_defined?(:J2MEUtil, false); end; end
module ::Org; module Allbinary; module Logic; autoload :ABSystemWrapper, "org/allbinary/logic/ABSystemWrapper" unless const_defined?(:ABSystemWrapper, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :HighScoresCanvas, "org/allbinary/game/score/displayable/HighScoresCanvas" unless const_defined?(:HighScoresCanvas, false)

end; end; end; end; end

