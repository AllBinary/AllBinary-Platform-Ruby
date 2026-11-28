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

class NotificationUtil
    attr_accessor :logUtil, :notificationManager, :notificationBuilder

    def jfields_org_allbinary_content_NotificationUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @notificationManager = ::Org::Allbinary::DataPackage::Resource::ResourceUtil.getInstance().getContext().getSystemService(::Android::Content::Context::NOTIFICATION_SERVICE)
        @notificationBuilder = nil unless instance_variable_defined?(:@notificationBuilder)
    end
    

    def self.getInstance()
        return SINGLETON
    end
    

    def initialize()
        jfields_org_allbinary_content_NotificationUtil
        _SDK_VERSION = ::Org::Allbinary::Android::AndroidInfoFactory.getInstance().getVersion()
        if _SDK_VERSION > 22
            @notificationBuilder = NotificationBuilderAPI23.new()
        else
            @notificationBuilder = NotificationBuilder::NULL_NOTIFICATION_BUILDER
        end
    end
    

    def notify(command, resource, message)
        context = ::Org::Allbinary::DataPackage::Resource::ResourceUtil.getInstance().getContext()
        intent = CommandUriAction.getInstance().getIntent(command)
        integer = ::Org::Allbinary::DataPackage::Resource::ResourceUtil.getInstance().getResourceId(resource)
        _FLAG_IMMUTABLE = 1 << 26
        _SDK_VERSION = ::Org::Allbinary::Android::AndroidInfoFactory.getInstance().getVersion()
        pendingIntent = ::Android::App::PendingIntent.getActivity(context, 0, intent, (_SDK_VERSION > 22 ? _FLAG_IMMUTABLE : 0))
        if @notificationBuilder == nil
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.putF(commonStrings.EXCEPTION, self, commonStrings.NOT_IMPLEMENTED)
            return
        end
        @notificationBuilder.build(context, command, message, integer, pendingIntent)
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
module ::Android; module App; autoload :Notification, "android/app/Notification" unless const_defined?(:Notification, false); end; end
module ::Android; module App; autoload :NotificationManager, "android/app/NotificationManager" unless const_defined?(:NotificationManager, false); end; end
module ::Android; module App; autoload :PendingIntent, "android/app/PendingIntent" unless const_defined?(:PendingIntent, false); end; end
module ::Android; module Content; autoload :Context, "android/content/Context" unless const_defined?(:Context, false); end; end
module ::Android; module Content; autoload :Intent, "android/content/Intent" unless const_defined?(:Intent, false); end; end
module ::Org; module Allbinary; module Android; autoload :AndroidInfoFactory, "org/allbinary/android/AndroidInfoFactory" unless const_defined?(:AndroidInfoFactory, false); end; end; end
module ::Org; module Allbinary; module DataPackage; module Resource; autoload :ResourceUtil, "org/allbinary/data/resource/ResourceUtil" unless const_defined?(:ResourceUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :CommandUriAction, "org/allbinary/content/CommandUriAction" unless const_defined?(:CommandUriAction, false)
autoload :NotificationBuilder, "org/allbinary/content/NotificationBuilder" unless const_defined?(:NotificationBuilder, false)
autoload :NotificationBuilderAPI23, "org/allbinary/content/NotificationBuilderAPI23" unless const_defined?(:NotificationBuilderAPI23, false)

begin
    NotificationUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

