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
# package org.allbinary.game.configuration.event

require "org/allbinary/logic/util/event/AllBinaryEventObject"

class GameFeatureEvent < AllBinaryEventObject
    attr_accessor :whatChanged

    def initialize_fields
        @whatChanged = nil
    end
    

    def initialize(anyType, whatChanged)
        super(anyType)
        initialize_fields
        @whatChanged = whatChanged
    end
    

    def getWhatChanged()
        return @whatChanged
    end
    

    def getGameOption()
        return self.getSource()
    end
end

