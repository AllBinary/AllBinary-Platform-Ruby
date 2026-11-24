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
require "org/allbinary/game/input/GameKeyEventSourceInterface"

module ::Org; module Allbinary; module Game; module Displayable; module Canvas

module MenuListener
    include ::Org::Allbinary::Game::Input::GameKeyEventSourceInterface
    

    def open()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :open, 0
    

    # throws Exception
    def close()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :close, 0
end

end; end; end; end; end

