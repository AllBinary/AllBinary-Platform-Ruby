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
# package org.allbinary.game.layer


module ::Org; module Allbinary; module Game; module Layer

class LayerPlacementType
    attr_accessor :type

    def jfields_org_allbinary_game_layer_LayerPlacementType
        @type = nil unless instance_variable_defined?(:@type)
    end
    

    def initialize(type)
        jfields_org_allbinary_game_layer_LayerPlacementType
        @type = type
    end
    

    def getType()
        return @type
    end
    

    def setType(type)
        @type = type
    end
end

end; end; end; end

