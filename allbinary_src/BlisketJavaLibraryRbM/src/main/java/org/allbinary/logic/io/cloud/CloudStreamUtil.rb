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
# package org.allbinary.logic.io

# require "java/io/InputStream"

class CloudStreamUtil
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return CloudStreamUtil.instance
    end
    

    # throws Exception
    def getFile(file)
        inputStream = AbFileInputStream.new(file)
        available = inputStream.available()
        if available > 0
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Cloud File Bytes: " + (available).to_s, self, "processRequest()")
            end
        end
        return inputStream
    end
    

    # throws Exception
    def getFileAnyWhere(file)
        inputStream = AbFileLocalInputStream.new(file)
        available = inputStream.available()
        if available > 0
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Local File Bytes: " + (available).to_s, self, "processRequest()")
            end
        else
            inputStream = AbFileInputStream.new(file)
            available = inputStream.available()
            if available > 0
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                    @logUtil.putF("Cloud File Bytes: " + (available).to_s, self, "processRequest()")
                end
            end
        end
        return inputStream
    end
    

    # throws Exception
    def getFileLocal(file)
        inputStream = AbFileLocalInputStream.new(file)
        available = inputStream.available()
        if available > 0
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Local File Bytes: " + (available).to_s, self, "processRequest()")
            end
        end
        return inputStream
    end

    def self.instance()
        CloudStreamUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        CloudStreamUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = CloudStreamUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CloudStreamUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :AbFile, "org/allbinary/logic/io/file/AbFile"

begin
    CloudStreamUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

