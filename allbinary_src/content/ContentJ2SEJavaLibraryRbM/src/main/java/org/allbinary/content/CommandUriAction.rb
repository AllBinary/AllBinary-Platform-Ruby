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
    attr_accessor :logUtil, :commonStrings, :hashtable

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
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
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.PROCESS, e)
        end
    end
    

    def getIntent(command)
        url = @hashtable.get(command)
        return @intent
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/ABHashtable"

class CommandUriAction
    @@instance = CommandUriAction.new()
end

