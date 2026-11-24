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


module ::Org; module Allbinary; module Logic; module Communication; module Log

class LogData
    attr_accessor :MAX, :extension, :backupFileExt, :ALLBINARY, :NAME, :DESCRIPTION

    def jfields_org_allbinary_logic_communication_log_LogData
        @MAX = 5000000
        @extension = "log"
        @backupFileExt = (::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().EXTENSION_SEP).to_s + "bak" + (::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().EXTENSION_SEP).to_s + "txt"
        @ALLBINARY = "allbinary"
        @NAME = "LOG_NAME"
        @DESCRIPTION = "LOG_DESCRIPTION"
    end

    def initialize
        jfields_org_allbinary_logic_communication_log_LogData
    end
end

module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end

end; end; end; end; end

