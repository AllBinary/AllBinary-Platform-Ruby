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

class GameCanvasPauseRunnable < GameRunnable
    attr_accessor :logUtil, :allBinaryGameCanvas

    def jfields_org_allbinary_game_displayable_canvas_GameCanvasPauseRunnable
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @allBinaryGameCanvas = nil unless instance_variable_defined?(:@allBinaryGameCanvas)
    end
    

    def initialize(allBinaryGameCanvas)
        super()
        jfields_org_allbinary_game_displayable_canvas_GameCanvasPauseRunnable
        @allBinaryGameCanvas = allBinaryGameCanvas
    end
    

    def run()
    end
    java_overload :run, 0
    

    # throws Exception
    def processLoopSleep()
        begin
            features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
            isOpenGL = features.isDefault(::Org::Allbinary::Graphics::Opengles::OpenGLFeatureFactory.getInstance().OPENGL)
            if isOpenGL
                @allBinaryGameCanvas.processSleep()
            end
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
        end
    end
    java_overload :processLoopSleep, 0
end

module ::Org; module Allbinary; autoload :AndroidUtil, "org/allbinary/AndroidUtil" unless const_defined?(:AndroidUtil, false); end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLFeatureFactory, "org/allbinary/graphics/opengles/OpenGLFeatureFactory" unless const_defined?(:OpenGLFeatureFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :AllBinaryGameCanvas, "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas" unless const_defined?(:AllBinaryGameCanvas, false)

end; end; end; end; end

