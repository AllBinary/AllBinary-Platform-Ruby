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

class NotificationUtil
    attr_accessor :logUtil, :notificationManager, :notificationBuilder

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @notificationManager = ResourceUtil.getInstance().getContext().getSystemService(Context::NOTIFICATION_SERVICE)
        @notificationBuilder = nil
    end
    

    def self.getInstance()
        return NotificationUtil::SINGLETON
    end
    

    def initialize()
        initialize_fields
        _SDK_VERSION = AndroidInfoFactory.getInstance().getVersion()
        if _SDK_VERSION > 22
            @notificationBuilder = NotificationBuilderAPI23.new()
        else
            @notificationBuilder = NotificationBuilder::NULL_NOTIFICATION_BUILDER
        end
    end
    

    def notify(command, resource, message)
        context = ResourceUtil.getInstance().getContext()
        intent = CommandUriAction.getInstance().getIntent(command)
        integer = ResourceUtil.getInstance().getResourceId(resource)
        _FLAG_IMMUTABLE = 1 << 26
        _SDK_VERSION = AndroidInfoFactory.getInstance().getVersion()
        pendingIntent = PendingIntent.getActivity(context, 0, intent, (_SDK_VERSION > 22 ? _FLAG_IMMUTABLE : 0))
        if @notificationBuilder == nil
            commonStrings = CommonStrings.getInstance()
            @logUtil.putF(commonStrings.EXCEPTION, self, commonStrings.NOT_IMPLEMENTED)
            return
        end
        @notificationBuilder.build(context, command, message, integer, pendingIntent)
    end
end

require "android/app/Notification"
require "android/app/NotificationManager"
require "android/app/PendingIntent"
require "android/content/Context"
require "android/content/Intent"
require "org/allbinary/android/AndroidInfoFactory"
require "org/allbinary/data/resource/ResourceUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/content/CommandUriAction"
require "org/allbinary/content/NotificationBuilder"
require "org/allbinary/content/NotificationBuilderAPI23"

class NotificationUtil
    SINGLETON = NotificationUtil.new()
end

