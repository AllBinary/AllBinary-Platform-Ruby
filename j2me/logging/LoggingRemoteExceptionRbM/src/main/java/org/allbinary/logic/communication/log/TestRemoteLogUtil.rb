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

class TestRemoteLogUtil
    

    def initialize()
        ::Org::Allbinary::Globals::Globals.getInstance().init(self.class.getClassLoader(), TestRemoteLogUtil::PATH)
        logUtil = LogUtil.getInstance()
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        logUtil.put(commonStrings.EXCEPTION, "Test", "TestClass", StandardError.new("Pretend Exception"))
    end
    

    # throws Exception
    def self.main(args)
        TestRemoteLogUtil.new()
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:PATH, "G:\\mnt\\bc\\mydev\\work\\allbinary_src\\licensing\\data\\")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TestRemoteLogUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:PATH].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Globals; autoload :Globals, "org/allbinary/globals/Globals" unless const_defined?(:Globals, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false)

begin
    TestRemoteLogUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

