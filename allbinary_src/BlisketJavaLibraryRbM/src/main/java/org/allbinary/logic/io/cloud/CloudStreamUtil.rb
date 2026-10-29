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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/file/AbFile"

class CloudStreamUtil
    @@instance = CloudStreamUtil.new()
end

