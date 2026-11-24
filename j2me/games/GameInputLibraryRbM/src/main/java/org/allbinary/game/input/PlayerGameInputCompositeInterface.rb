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
# package org.allbinary.game.input

require "java/lang/JavaOverload"
require "org/allbinary/game/input/GameInputInterface"

module ::Org; module Allbinary; module Game; module Input

module PlayerGameInputCompositeInterface
    include GameInputInterface
    

    def getPlayerGameInput()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getPlayerGameInput, 0
end

autoload :PlayerGameInput, "org/allbinary/game/input/PlayerGameInput" unless const_defined?(:PlayerGameInput, false)

end; end; end; end

