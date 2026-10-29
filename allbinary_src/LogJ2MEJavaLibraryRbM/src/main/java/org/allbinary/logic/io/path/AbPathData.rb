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
# package org.allbinary.logic.io.path


class AbPathData
    attr_accessor :EXTENSION_SEP, :SEPARATORCHAR, :SEPARATOR

    def initialize_fields
        @EXTENSION_SEP = CommonSeps.getInstance().PERIOD
        @SEPARATORCHAR = "/"
        @SEPARATOR = CommonSeps.getInstance().FORWARD_SLASH
    end
    

    def self.getInstance()
        return AbPathData.instance
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

require "org/allbinary/logic/io/file/FilePathData"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonSeps"

class AbPathData
    @@instance = AbPathData.new()
end

