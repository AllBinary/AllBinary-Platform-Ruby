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
require "org/allbinary/content/NotificationBuilder"

class NotificationBuilderAPI23 < NotificationBuilder
    

    def build(context, command, message, integer, pendingIntent)
        notification = Builder.new(context).setSmallIcon(integer.to_i).setTicker(message).setWhen((Time.now.to_f * 1000).to_i).setContentTitle(command.getLabel()).setContentText(message).setContentIntent(pendingIntent).build()
        return notification
    end
end

require "android/app/Notification"
require "android/app/Notification/Builder"
require "android/app/PendingIntent"
require "android/content/Context"
require "android/os/Parcelable"
require "java/lang/System"

