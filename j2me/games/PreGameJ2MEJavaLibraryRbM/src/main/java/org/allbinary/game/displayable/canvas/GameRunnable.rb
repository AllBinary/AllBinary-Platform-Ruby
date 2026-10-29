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

require "java/lang/Runnable"

class GameRunnable
    include Runnable
    attr_accessor :WAIT, :FAST, :waitInMillis

    def initialize_fields
        @WAIT = 240
        @FAST = 60
        @waitInMillis = @WAIT
    end
    

    def initialize()
        initialize_fields
    end
    

    def run()
        DisplayInfoSingleton.getInstance().process()
    end
    

    # throws Exception
    def processLoopSleep()
        sleep((@waitInMillis) / 1000.0)
    end
end

require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "java/lang/Thread"

