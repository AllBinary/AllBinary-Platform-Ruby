# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.android.view

require "org/allbinary/android/view/BaseViewWrapper"

class ViewWrapper < BaseViewWrapper
    attr_accessor :view

    def initialize_fields
        @view = nil
    end
    

    def initialize(view)
        super()
        initialize_fields
        @view = view
    end
    

    def invalidate()
        @view.invalidate()
    end
    

    def postInvalidate()
        @view.postInvalidate()
    end
end

require "android/view/View"

