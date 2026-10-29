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

require "java/lang/Object"
# require "javax/microedition/lcdui/Command"

class NotificationUtil
    attr_accessor :notificationManager

    def initialize_fields
        @notificationManager = ResourceUtil.getInstance().getContext().getSystemService(Context::NOTIFICATION_SERVICE)
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return NotificationUtil::SINGLETON
    end
    

    def notify(command, resource, message)
        context = ResourceUtil.getInstance().getContext()
        intent = CommandUriAction.getInstance().getIntent(command)
        integer = ResourceUtil.getInstance().getResourceId(resource)
        notification = Notification.new(integer.to_i, message, (Time.now.to_f * 1000).to_i)
        pendingIntent = PendingIntent.getActivity(context, 0, intent, 0)
        notification.setLatestEventInfo(context, command.getLabel(), message, pendingIntent)
        @notificationManager.notify(TsUtil.getInstance().hashCode(command), notification)
    end
end

require "org/allbinary/data/resource/ResourceUtil"
require "org/allbinary/TsUtil"
require "org/allbinary/content/CommandUriAction"
require "java/lang/System"

class NotificationUtil
    SINGLETON = NotificationUtil.new()
end

