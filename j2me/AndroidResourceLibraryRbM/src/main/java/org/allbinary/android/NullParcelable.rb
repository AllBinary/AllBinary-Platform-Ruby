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
# package org.allbinary.android

require "java/lang/JavaOverload"
require "android/os/Parcelable"

module ::Org; module Allbinary; module Android

class NullParcelable
    include ::Android::Os::Parcelable
    

    def describeContents()
        raise RuntimeError.new()
    end
    java_overload :describeContents, 0
    

    def writeToParcel(dest, flags)
    end
    java_overload :writeToParcel, 2

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_PARCELABLE, NullParcelable.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NullParcelable"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_PARCELABLE].include?(name)
        end
        super
    end
end

module ::Android; module Os; autoload :Parcel, "android/os/Parcel" unless const_defined?(:Parcel, false); end; end

begin
    NullParcelable.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

