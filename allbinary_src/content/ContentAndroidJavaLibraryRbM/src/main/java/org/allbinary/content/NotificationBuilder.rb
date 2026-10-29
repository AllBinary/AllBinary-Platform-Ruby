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

# require "javax/microedition/lcdui/Command"

class NotificationBuilder
    

    def build(context, command, message, integer, pendingIntent)
        return NullParcelable::NULL_PARCELABLE
    end
end

require "org/allbinary/android/NullParcelable"
require "android/app/PendingIntent"
require "android/content/Context"
require "android/os/Parcelable"

class NotificationBuilder
    NULL_NOTIFICATION_BUILDER = NotificationBuilder.new()
end

