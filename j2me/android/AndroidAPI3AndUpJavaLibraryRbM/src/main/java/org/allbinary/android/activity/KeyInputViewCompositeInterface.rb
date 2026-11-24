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
# package org.allbinary.android.activity

require "java/lang/JavaOverload"
require "org/allbinary/android/activity/ViewCompositeInterface"

module ::Org; module Allbinary; module Android; module Activity

module KeyInputViewCompositeInterface
    include ViewCompositeInterface
    

    def setKeyInputView(keyInputView)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setKeyInputView, 1
end

module ::Android; module View; autoload :View, "android/view/View" unless const_defined?(:View, false); end; end

end; end; end; end

