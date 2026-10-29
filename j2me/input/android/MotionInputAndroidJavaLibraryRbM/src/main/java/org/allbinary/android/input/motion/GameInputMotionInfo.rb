#
# AllBinary Open License Version 1
# Copyright (c) 2009 AllBinary
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
# package org.allbinary.android.input.motion


class GameInputMotionInfo
    attr_accessor :MAX_API, :MAX_POINTERS

    def initialize_fields
        @MAX_API = nil
        @MAX_POINTERS = nil
    end
    

    def initialize(maxApi, maxPointers)
        initialize_fields
        @MAX_API = maxApi
        @MAX_POINTERS = maxPointers
    end
end

