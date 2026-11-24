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
require "org/allbinary/game/input/GameInputProcessor"

module ::Org; module Allbinary; module Game; module Input

class ScrollMapGameInputProcessor < GameInputProcessor
    attr_accessor :scrollMapPlayerGameInput

    def jfields_org_allbinary_game_input_ScrollMapGameInputProcessor
        @scrollMapPlayerGameInput = nil unless instance_variable_defined?(:@scrollMapPlayerGameInput)
    end
    

    def initialize(scrollMapPlayerGameInput)
        super()
        jfields_org_allbinary_game_input_ScrollMapGameInputProcessor
        @scrollMapPlayerGameInput = scrollMapPlayerGameInput
    end
end

autoload :ScrollMapPlayerGameInput, "org/allbinary/game/input/ScrollMapPlayerGameInput" unless const_defined?(:ScrollMapPlayerGameInput, false)

end; end; end; end

