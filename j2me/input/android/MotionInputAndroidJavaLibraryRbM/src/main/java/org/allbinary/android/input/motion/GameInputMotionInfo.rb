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


module ::Org; module Allbinary; module Android; module Input; module Motion

class GameInputMotionInfo
    attr_accessor :MAX_API, :MAX_POINTERS

    def jfields_org_allbinary_android_input_motion_GameInputMotionInfo
        @MAX_API = nil unless instance_variable_defined?(:@MAX_API)
        @MAX_POINTERS = nil unless instance_variable_defined?(:@MAX_POINTERS)
    end
    

    def initialize(maxApi, maxPointers)
        jfields_org_allbinary_android_input_motion_GameInputMotionInfo
        @MAX_API = maxApi
        @MAX_POINTERS = maxPointers
    end
end

end; end; end; end; end

