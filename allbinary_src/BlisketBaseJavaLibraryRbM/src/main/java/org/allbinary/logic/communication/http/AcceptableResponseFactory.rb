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


class AcceptableResponseFactory
    attr_accessor :HTML, :WML, :VXML

    def initialize_fields
        @HTML = AcceptableResponse.new("text/html", "html", 0)
        @WML = AcceptableResponse.new("text/wml", "wml", 1)
        @VXML = AcceptableResponse.new("text/vxml", "vxml", 2)
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return AcceptableResponseFactory.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/http/AcceptableResponse"

class AcceptableResponseFactory
    @@instance = AcceptableResponseFactory.new()
end

