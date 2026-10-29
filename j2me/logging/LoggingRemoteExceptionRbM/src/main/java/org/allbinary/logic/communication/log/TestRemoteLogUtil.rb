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


class TestRemoteLogUtil
    

    def initialize()
        Globals.getInstance().init(self.class.getClassLoader(), TestRemoteLogUtil::PATH)
        logUtil = LogUtil.getInstance()
        commonStrings = CommonStrings.getInstance()
        logUtil.put(commonStrings.EXCEPTION, "Test", "TestClass", StandardError.new("Pretend Exception"))
    end
    

    # throws Exception
    def self.main(args)
        TestRemoteLogUtil.new()
    end
end

require "org/allbinary/globals/Globals"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/communication/log/LogUtil"

class TestRemoteLogUtil
    PATH = "G:\\mnt\\bc\\mydev\\work\\allbinary_src\\licensing\\data\\"
end

