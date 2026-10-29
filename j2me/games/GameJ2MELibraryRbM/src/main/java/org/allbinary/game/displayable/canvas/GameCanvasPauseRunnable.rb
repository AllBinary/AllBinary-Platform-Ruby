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

require "org/allbinary/game/displayable/canvas/GameRunnable"

class GameCanvasPauseRunnable < GameRunnable
    attr_accessor :logUtil, :allBinaryGameCanvas

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @allBinaryGameCanvas = nil
    end
    

    def initialize(allBinaryGameCanvas)
        super()
        initialize_fields
        @allBinaryGameCanvas = allBinaryGameCanvas
    end
    

    def run()
    end
    

    # throws Exception
    def processLoopSleep()
        begin
            features = Features.getInstance()
            isOpenGL = features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL)
            if isOpenGL
                @allBinaryGameCanvas.processSleep()
            end
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
        end
    end
end

require "org/allbinary/AndroidUtil"
require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/graphics/opengles/OpenGLFeatureFactory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"

