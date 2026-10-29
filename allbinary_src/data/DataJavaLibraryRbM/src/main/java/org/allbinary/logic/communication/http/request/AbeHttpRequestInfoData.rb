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
# package org.allbinary.logic.communication.http.request


class AbeHttpRequestInfoData
    attr_accessor :HTTP_USER_AGENT, :REMOTE_ADDRESS, :REMOTE_HOST, :REMOTE_HOST_BY_ADDRESS, :REMOTE_PORT, :REQUEST_FILE_PATH

    def initialize_fields
        @HTTP_USER_AGENT = "HTTP_USER_AGENT"
        @REMOTE_ADDRESS = "REMOTE_ADDRESS"
        @REMOTE_HOST = "REMOTE_HOST"
        @REMOTE_HOST_BY_ADDRESS = "REMOTE_HOST_BY_ADDRESS"
        @REMOTE_PORT = "REMOTE_PORT"
        @REQUEST_FILE_PATH = "REQUEST_FILE_PATH"
    end
    

    def self.getInstance()
        return AbeHttpRequestInfoData.instance
    end
    

    def initialize()
        initialize_fields
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class AbeHttpRequestInfoData
    @@instance = AbeHttpRequestInfoData.new()
end

