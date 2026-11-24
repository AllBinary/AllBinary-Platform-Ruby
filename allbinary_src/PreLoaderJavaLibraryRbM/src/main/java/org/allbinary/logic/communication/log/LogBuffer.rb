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

class LogBuffer
    attr_accessor :logUtil, :logEntryVector

    def jfields_org_allbinary_logic_communication_log_LogBuffer
        @logUtil = LogUtil.getInstance()
        @logEntryVector = nil unless instance_variable_defined?(:@logEntryVector)
    end
    

    def initialize()
        jfields_org_allbinary_logic_communication_log_LogBuffer
        @logEntryVector = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def add(log)
        @logEntryVector.add(log)
    end
    

    def logAll()
        size = @logEntryVector.size()
        (0...size).each do |index|
            log = @logEntryVector.get(index)
            @logUtil.putL(log)
        end
    end
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
autoload :Log, "org/allbinary/logic/communication/log/Log" unless const_defined?(:Log, false)
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false)

end; end; end; end; end

