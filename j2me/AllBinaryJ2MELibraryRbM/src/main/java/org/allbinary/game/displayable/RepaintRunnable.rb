# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.game.displayable

require "org/allbinary/thread/ARunnable"

class RepaintRunnable < ARunnable
    attr_accessor :canvas

    def initialize_fields
        @canvas = nil
    end
    

    def initialize(canvas)
        super()
        initialize_fields
        @canvas = canvas
    end
    

    def run()
        begin
            @canvas.repaint()
            DisplayInfoSingleton.getInstance().process()
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            logUtil = LogUtil.getInstance()
            logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
        end
    end
end

autoload :Canvas, "javax/microedition/lcdui/Canvas"
autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"

