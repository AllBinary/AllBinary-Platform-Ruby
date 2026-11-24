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
require "org/allbinary/game/displayable/canvas/GameRunnable"

module ::Org; module Allbinary; module Game; module Displayable; module Canvas

class GameCanvasRunnable < GameRunnable
    attr_accessor :logUtil, :gameTickDisplayInfoSingleton, :allBinaryGameCanvas, :gameTickTimeDelayHelper

    def jfields_org_allbinary_game_displayable_canvas_GameCanvasRunnable
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @gameTickDisplayInfoSingleton = ::Org::Allbinary::Graphics::Displayable::GameTickDisplayInfoSingleton.getInstance()
        @allBinaryGameCanvas = nil unless instance_variable_defined?(:@allBinaryGameCanvas)
        @gameTickTimeDelayHelper = ::Org::Allbinary::TimePackage::GameTickTimeDelayHelperFactory.getInstance()
    end
    

    def initialize(allBinaryGameCanvas)
        super()
        jfields_org_allbinary_game_displayable_canvas_GameCanvasRunnable
        @allBinaryGameCanvas = allBinaryGameCanvas
    end
    

    def run()
        begin
            @allBinaryGameCanvas.getLoopTimeHelperP().setStartTime(@gameTickTimeDelayHelper.setStartTime())
            @gameTickDisplayInfoSingleton.update()
            @allBinaryGameCanvas.processGame()
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
        end
    end
    java_overload :run, 0
    

    # throws Exception
    def processLoopSleep()
        @allBinaryGameCanvas.processLoopSleep()
    end
    java_overload :processLoopSleep, 0
end

module ::Org; module Allbinary; module Graphics; module Displayable; autoload :GameTickDisplayInfoSingleton, "org/allbinary/graphics/displayable/GameTickDisplayInfoSingleton" unless const_defined?(:GameTickDisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :GameTickTimeDelayHelper, "org/allbinary/time/GameTickTimeDelayHelper" unless const_defined?(:GameTickTimeDelayHelper, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :GameTickTimeDelayHelperFactory, "org/allbinary/time/GameTickTimeDelayHelperFactory" unless const_defined?(:GameTickTimeDelayHelperFactory, false); end; end; end
autoload :AllBinaryGameCanvas, "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas" unless const_defined?(:AllBinaryGameCanvas, false)

end; end; end; end; end

