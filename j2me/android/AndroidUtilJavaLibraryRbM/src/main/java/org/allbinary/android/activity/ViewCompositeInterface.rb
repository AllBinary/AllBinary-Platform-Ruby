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


module ::Org; module Allbinary; module Android; module Activity

module ViewCompositeInterface
    

    def getRootView()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getView()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def runOnUiThread(action)
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Android; module View; autoload :View, "android/view/View" unless const_defined?(:View, false); end; end
require "java/lang/Runnable"

end; end; end; end

