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
# package org.allbinary.logic.communication.log


class LogData
    attr_accessor :MAX, :extension, :backupFileExt, :ALLBINARY, :NAME, :DESCRIPTION

    def initialize_fields
        @MAX = 5000000
        @extension = "log"
        @backupFileExt = (AbPathData.getInstance().EXTENSION_SEP).to_s + "bak" + (AbPathData.getInstance().EXTENSION_SEP).to_s + "txt"
        @ALLBINARY = "allbinary"
        @NAME = "LOG_NAME"
        @DESCRIPTION = "LOG_DESCRIPTION"
    end

    def initialize
        initialize_fields
    end
end

require "org/allbinary/logic/io/path/AbPathData"

