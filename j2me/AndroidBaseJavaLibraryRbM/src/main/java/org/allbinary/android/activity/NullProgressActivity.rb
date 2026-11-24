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
# package org.allbinary.android.activity

require "java/lang/JavaOverload"
require "org/allbinary/android/activity/ProgressActivityInterface"

module ::Org; module Allbinary; module Android; module Activity

class NullProgressActivity
    include ProgressActivityInterface
    

    def runOnUiThread(action)
    end
    java_overload :runOnUiThread, 1
    

    def onDismissTitleProgressBar()
    end
    java_overload :onDismissTitleProgressBar, 0
    

    def onShowTitleProgressBar(value, indeterminate)
    end
    java_overload :onShowTitleProgressBar, 2
    

    def onTitleProgressBarSetProgress(value)
    end
    java_overload :onTitleProgressBarSetProgress, 1

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_PROGRESS_ACTIVITY, NullProgressActivity.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NullProgressActivity"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_PROGRESS_ACTIVITY].include?(name)
        end
        super
    end
end

require "java/lang/Runnable"

begin
    NullProgressActivity.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

