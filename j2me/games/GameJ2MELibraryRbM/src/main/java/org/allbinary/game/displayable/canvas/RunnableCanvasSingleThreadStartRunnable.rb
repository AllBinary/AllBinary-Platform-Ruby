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

class RunnableCanvasSingleThreadStartRunnable < GameRunnable
    attr_accessor :logUtil, :runnableCanvas

    def jfields_org_allbinary_game_displayable_canvas_RunnableCanvasSingleThreadStartRunnable
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @runnableCanvas = nil unless instance_variable_defined?(:@runnableCanvas)
    end
    

    def initialize(demoCanvas)
        super()
        jfields_org_allbinary_game_displayable_canvas_RunnableCanvasSingleThreadStartRunnable
        @runnableCanvas = demoCanvas
    end
    

    def run()
        begin
            @runnableCanvas.run()
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
        end
    end
    java_overload :run, 0
    

    # throws Exception
    def processLoopSleep()
        @runnableCanvas.processLoopSleep()
    end
    java_overload :processLoopSleep, 0
end

module ::Org; module Allbinary; module Canvas; autoload :RunnableCanvas, "org/allbinary/canvas/RunnableCanvas" unless const_defined?(:RunnableCanvas, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

end; end; end; end; end

