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

class CommandUriAction
    attr_accessor :logUtil, :hashtable

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @hashtable = StdUtil.getInstance().createHashtable()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return CommandUriAction.instance
    end
    

    def add(command, url)
        @hashtable.put(command, url)
    end
    

    def process(command)
        begin
            intent = self.getIntent(command)
            ResourceUtil.getInstance().getContext().startActivity(intent)
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.PROCESS, e)
        end
    end
    

    def getIntent(command)
        url = @hashtable.get(command)
        uri = Uri.parse(url)
        intent = Intent.new(Intent::ACTION_VIEW, uri)
        return intent
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "android/content/Intent"
require "android/net/Uri"
require "org/allbinary/data/resource/ResourceUtil"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/ABHashtable"

class CommandUriAction
    @@instance = CommandUriAction.new()
end

