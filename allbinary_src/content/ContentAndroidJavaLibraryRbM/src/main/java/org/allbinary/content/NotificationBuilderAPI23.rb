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

require "java/lang/JavaOverload"
require "org/allbinary/content/NotificationBuilder"

module ::Org; module Allbinary; module Content

class NotificationBuilderAPI23 < NotificationBuilder
    

    def build(context, command, message, integer, pendingIntent)
        notification = ::Android::App::Notification::Builder.new(context).setSmallIcon(integer.to_i).setTicker(message).setWhen((::Time.now.to_f * 1000).to_i).setContentTitle(command.getLabel()).setContentText(message).setContentIntent(pendingIntent).build()
        return notification
    end
    java_overload :build, 5
end

module ::Javax; module Microedition; module Lcdui; autoload :Command, "javax/microedition/lcdui/Command" unless const_defined?(:Command, false); end; end; end
module ::Android; module App; autoload :Notification, "android/app/Notification" unless const_defined?(:Notification, false); end; end
module ::Android; module App; autoload :Notification, "android/app/Notification" unless const_defined?(:Notification, false); end; end
module ::Android; module App; autoload :PendingIntent, "android/app/PendingIntent" unless const_defined?(:PendingIntent, false); end; end
module ::Android; module Content; autoload :Context, "android/content/Context" unless const_defined?(:Context, false); end; end
module ::Android; module Os; autoload :Parcelable, "android/os/Parcelable" unless const_defined?(:Parcelable, false); end; end
require "java/lang/System"

end; end; end

