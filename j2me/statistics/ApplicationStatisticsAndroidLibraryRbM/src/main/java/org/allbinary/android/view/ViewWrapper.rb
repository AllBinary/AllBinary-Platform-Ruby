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

require "java/lang/JavaOverload"
require "org/allbinary/android/view/BaseViewWrapper"

module ::Org; module Allbinary; module Android; module View

class ViewWrapper < BaseViewWrapper
    attr_accessor :view

    def jfields_org_allbinary_android_view_ViewWrapper
        @view = nil unless instance_variable_defined?(:@view)
    end
    

    def initialize(view)
        super()
        jfields_org_allbinary_android_view_ViewWrapper
        @view = view
    end
    

    def invalidate()
        @view.invalidate()
    end
    java_overload :invalidate, 0
    

    def postInvalidate()
        @view.postInvalidate()
    end
    java_overload :postInvalidate, 0
end

module ::Android; module View; autoload :View, "android/view/View" unless const_defined?(:View, false); end; end

end; end; end; end

