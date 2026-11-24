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
# package org.allbinary.content


module ::Org; module Allbinary; module Content

class NotificationBuilder
    

    def build(context, command, message, integer, pendingIntent)
        return ::Org::Allbinary::Android::NullParcelable::NULL_PARCELABLE
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_NOTIFICATION_BUILDER, NotificationBuilder.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NotificationBuilder"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_NOTIFICATION_BUILDER].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Android; autoload :NullParcelable, "org/allbinary/android/NullParcelable" unless const_defined?(:NullParcelable, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Command, "javax/microedition/lcdui/Command" unless const_defined?(:Command, false); end; end; end
module ::Android; module App; autoload :PendingIntent, "android/app/PendingIntent" unless const_defined?(:PendingIntent, false); end; end
module ::Android; module Content; autoload :Context, "android/content/Context" unless const_defined?(:Context, false); end; end
module ::Android; module Os; autoload :Parcelable, "android/os/Parcelable" unless const_defined?(:Parcelable, false); end; end

begin
    NotificationBuilder.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

