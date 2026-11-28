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

module ::Org; module Allbinary; module Content

class NotificationUtil
    attr_accessor :notificationManager

    def jfields_org_allbinary_content_NotificationUtil
        @notificationManager = ::Org::Allbinary::DataPackage::Resource::ResourceUtil.getInstance().getContext().getSystemService(Context::NOTIFICATION_SERVICE)
    end

    def initialize
        jfields_org_allbinary_content_NotificationUtil
    end
    

    def self.getInstance()
        return SINGLETON
    end
    

    def notify(command, resource, message)
        context = ::Org::Allbinary::DataPackage::Resource::ResourceUtil.getInstance().getContext()
        intent = CommandUriAction.getInstance().getIntent(command)
        integer = ::Org::Allbinary::DataPackage::Resource::ResourceUtil.getInstance().getResourceId(resource)
        notification = Notification.new(integer.to_i, message, (::Time.now.to_f * 1000).to_i)
        pendingIntent = PendingIntent.getActivity(context, 0, intent, 0)
        notification.setLatestEventInfo(context, command.getLabel(), message, pendingIntent)
        @notificationManager.notify(::Org::Allbinary::TsUtil.getInstance().hashCode(command), notification)
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, NotificationUtil.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NotificationUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Command, "javax/microedition/lcdui/Command" unless const_defined?(:Command, false); end; end; end
module ::Org; module Allbinary; module DataPackage; module Resource; autoload :ResourceUtil, "org/allbinary/data/resource/ResourceUtil" unless const_defined?(:ResourceUtil, false); end; end; end; end
module ::Org; module Allbinary; autoload :TsUtil, "org/allbinary/TsUtil" unless const_defined?(:TsUtil, false); end; end
autoload :CommandUriAction, "org/allbinary/content/CommandUriAction" unless const_defined?(:CommandUriAction, false)
require "java/lang/System"

begin
    NotificationUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

