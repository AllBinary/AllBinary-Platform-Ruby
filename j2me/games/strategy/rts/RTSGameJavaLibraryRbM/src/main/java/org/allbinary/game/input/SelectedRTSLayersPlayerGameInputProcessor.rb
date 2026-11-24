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

class SelectedRTSLayersPlayerGameInputProcessor < GameInputProcessor
    attr_accessor :selectedRTSLayersPlayerGameInput

    def jfields_org_allbinary_game_input_SelectedRTSLayersPlayerGameInputProcessor
        @selectedRTSLayersPlayerGameInput = nil unless instance_variable_defined?(:@selectedRTSLayersPlayerGameInput)
    end
    

    def initialize(selectedRTSLayersPlayerGameInput)
        super()
        jfields_org_allbinary_game_input_SelectedRTSLayersPlayerGameInputProcessor
        @selectedRTSLayersPlayerGameInput = selectedRTSLayersPlayerGameInput
    end
end

autoload :SelectedRTSLayersPlayerGameInput, "org/allbinary/game/input/SelectedRTSLayersPlayerGameInput" unless const_defined?(:SelectedRTSLayersPlayerGameInput, false)

end; end; end; end

