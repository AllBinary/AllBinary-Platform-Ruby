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

class GameRunnable
    include ::Java::Lang::Runnable
    attr_accessor :WAIT, :FAST, :waitInMillis

    def jfields_org_allbinary_game_displayable_canvas_GameRunnable
        @WAIT = 240
        @FAST = 60
        @waitInMillis = @WAIT
    end
    

    def initialize()
        jfields_org_allbinary_game_displayable_canvas_GameRunnable
    end
    

    def run()
        ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance().process()
    end
    java_overload :run, 0
    

    # throws Exception
    def processLoopSleep()
        sleep((@waitInMillis) / 1000.0)
    end
    java_overload :processLoopSleep, 0
end

module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
require "java/lang/Thread"

end; end; end; end; end

