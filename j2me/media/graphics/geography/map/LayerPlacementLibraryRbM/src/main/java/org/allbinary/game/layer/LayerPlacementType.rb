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


class LayerPlacementType
    attr_accessor :type

    def initialize_fields
        @type = nil
    end
    

    def initialize(type)
        initialize_fields
        @type = type
    end
    

    def getType()
        return @type
    end
    

    def setType(type)
        @type = type
    end
end

