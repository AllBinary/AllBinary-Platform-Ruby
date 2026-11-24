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
require "org/allbinary/android/activity/KeyInputViewCompositeInterface"

module ::Org; module Allbinary; module Android; module Activity

class NullKeyInputViewComposite
    include KeyInputViewCompositeInterface
    

    def setKeyInputView(keyInputView)
    end
    java_overload :setKeyInputView, 1
    

    def getRootView()
        raise RuntimeError.new()
    end
    java_overload :getRootView, 0
    

    def getView()
        raise RuntimeError.new()
    end
    java_overload :getView, 0
    

    def runOnUiThread(action)
    end
    java_overload :runOnUiThread, 1

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_KEY_INPUT_VIEW_COMPOSITE, NullKeyInputViewComposite.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NullKeyInputViewComposite"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_KEY_INPUT_VIEW_COMPOSITE].include?(name)
        end
        super
    end
end

module ::Android; module View; autoload :View, "android/view/View" unless const_defined?(:View, false); end; end
require "java/lang/Runnable"

begin
    NullKeyInputViewComposite.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

