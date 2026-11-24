# 
# AllBinary Open License Version 1 
# Copyright (c) 2003 AllBinary 
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
require "org/allbinary/game/input/GameInputProcessor"

module ::Org; module Allbinary; module Game; module Input

class RTSPlayerGameInputProcessor < GameInputProcessor
    attr_accessor :rtsPlayerGameInput

    def jfields_org_allbinary_game_input_RTSPlayerGameInputProcessor
        @rtsPlayerGameInput = nil unless instance_variable_defined?(:@rtsPlayerGameInput)
    end
    

    def initialize(rtsPlayerGameInput)
        super()
        jfields_org_allbinary_game_input_RTSPlayerGameInputProcessor
        @rtsPlayerGameInput = rtsPlayerGameInput
    end
end

autoload :RTSPlayerGameInput, "org/allbinary/game/input/RTSPlayerGameInput" unless const_defined?(:RTSPlayerGameInput, false)

end; end; end; end

