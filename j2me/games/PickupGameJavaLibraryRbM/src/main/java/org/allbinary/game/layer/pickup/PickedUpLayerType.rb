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
# package org.allbinary.game.layer.pickup


module ::Org; module Allbinary; module Game; module Layer; module Pickup

class PickedUpLayerType
    attr_accessor :name

    def jfields_org_allbinary_game_layer_pickup_PickedUpLayerType
        @name = nil unless instance_variable_defined?(:@name)
    end
    

    def initialize(name)
        jfields_org_allbinary_game_layer_pickup_PickedUpLayerType
        @name = name
    end
    

    def toString()
        return @name
    end
    alias_method :to_s, :toString
end

end; end; end; end; end

