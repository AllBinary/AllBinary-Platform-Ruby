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

module ProgressActivityInterface
    

    def runOnUiThread(action)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def onDismissTitleProgressBar()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def onShowTitleProgressBar(value, indeterminate)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def onTitleProgressBarSetProgress(value)
        return super if defined?(super)
        raise NotImplementedError
    end
end

require "java/lang/Runnable"

end; end; end; end

