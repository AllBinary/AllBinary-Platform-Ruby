#
# AllBinary Open License Version 1
# Copyright (c) 2022 AllBinary
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
# package org.allbinary.graphics.displayable.screen

# require "javax/microedition/lcdui/Canvas"
# require "javax/microedition/lcdui/Command"
# require "javax/microedition/lcdui/CommandListener"

class WebCommandProcessor
    attr_accessor :logUtil, :aboutCommandProcessor, :WEB_VIEW_ACTIVITY, :list

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @aboutCommandProcessor = AboutCommandProcessor.getInstance()
        @WEB_VIEW_ACTIVITY = "org.allbinary.android.activity.WebViewActivity"
        @list = BasicArrayListD.new()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return WebCommandProcessor.instance
    end
    

    def process(midletCommandListener, command, canvas)
        begin
            context = @aboutCommandProcessor.getContext()
            intent = Intent.new(context, TsUtil.getInstance().getClassClassLoader(self).loadClass(@WEB_VIEW_ACTIVITY))
            intent.putExtra(@aboutCommandProcessor.URL, @list.removeAt(0))
            intent.setFlags(Intent::FLAG_ACTIVITY_NEW_TASK)
            context.startActivity(intent)
        rescue ClassNotFoundException => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, "process", e)
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "android/content/Context"
require "android/content/Intent"
require "org/allbinary/TsUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/graphics/displayable/screen/AboutCommandProcessor"

class WebCommandProcessor
    @@instance = WebCommandProcessor.new()
end

