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
# package org.allbinary.game.physics.acceleration


class BasicAccelerationProperties
    attr_accessor :forward, :reverse

    def initialize_fields
        @forward = 0
        @reverse = 0
    end
    

    def initialize(forward, reverse)
        initialize_fields
        self.setForward(forward)
        self.setReverse(reverse)
    end
    

    def setReverse(reverse)
        @reverse = reverse
    end
    

    def getReverse()
        return @reverse
    end
    

    def setForward(forward)
        @forward = forward
    end
    

    def getForward()
        return @forward
    end
end

