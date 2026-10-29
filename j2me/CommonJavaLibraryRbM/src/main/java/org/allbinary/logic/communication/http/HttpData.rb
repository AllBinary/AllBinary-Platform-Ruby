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
# package org.allbinary.logic.communication.http


class HttpData
    attr_accessor :EQUALS, :PARAM_SEP, :URL_PARAM_SEP, :URL_LABEL

    def initialize_fields
        @EQUALS = nil
        @PARAM_SEP = nil
        @URL_PARAM_SEP = nil
        @URL_LABEL = "Url: "
    end
    

    def self.getInstance()
        return HttpData.instance
    end
    

    def initialize()
        initialize_fields
        commonSeps = CommonSeps.getInstance()
        @EQUALS = commonSeps.EQUALS
        @PARAM_SEP = commonSeps.AMPERSAND
        @URL_PARAM_SEP = commonSeps.QUESTION
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/string/CommonSeps"

class HttpData
    @@instance = HttpData.new()
end

