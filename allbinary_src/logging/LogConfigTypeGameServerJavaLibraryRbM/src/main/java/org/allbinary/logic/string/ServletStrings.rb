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
# package org.allbinary.logic.string


class ServletStrings
    attr_accessor :DOPOST, :DOGET, :REQUEST_EXCEPTION

    def initialize_fields
        @DOPOST = "doPost"
        @DOGET = "doGet"
        @REQUEST_EXCEPTION = "Request Failed"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return ServletStrings.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class ServletStrings
    @@instance = ServletStrings.new()
end

