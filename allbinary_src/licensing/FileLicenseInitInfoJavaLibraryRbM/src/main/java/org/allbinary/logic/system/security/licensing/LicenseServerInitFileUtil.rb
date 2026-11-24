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
# package org.allbinary.logic.system.security.licensing


module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing

class LicenseServerInitFileUtil
    attr_accessor :logUtil, :commonStrings, :NULL_OUTPUT_STREAM

    def jfields_org_allbinary_logic_system_security_licensing_LicenseServerInitFileUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @NULL_OUTPUT_STREAM = ::Org::Allbinary::Logic::Io::FilePackage::SimpleFileUtil.nullOutputStream()
    end

    def initialize
        jfields_org_allbinary_logic_system_security_licensing_LicenseServerInitFileUtil
    end
    

    def init()
        begin
            filePath = ::Org::Allbinary::Business::Init::LicenseInitInfoUtil.getInstance().INITFILENAME
            ::Org::Allbinary::Business::Init::LicenseInitInfoUtil.getInstance().setFilePath(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
            if ::Org::Allbinary::Logic::Io::FilePackage::FileFactory.getInstance().isFile(filePath)
                @logUtil.putF("Using Existing License File", self, @commonStrings.INIT)
            else
                self.write()
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.INIT, e)
        end
    end
    

    def write()
        fileOutputStream = @NULL_OUTPUT_STREAM
        begin
            resourceUtil = ::Org::Allbinary::DataPackage::Resource::ResourceUtil.getInstance()
            filePath = ::Org::Allbinary::Business::Init::LicenseInitInfoUtil.getInstance().INITFILENAME
            inputStream = resourceUtil.getResourceAsStream(filePath)
            @logUtil.putF("Writing Default License File", self, @commonStrings.INIT)
            fileStreamFactory = ::Org::Allbinary::Logic::Io::FileStreamFactory.getInstance()
            fileOutputStream = fileStreamFactory.getFileOutputStreamInstance(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, filePath)
            b = 0
            index = 0
            while true
                b = inputStream.read()
                if b == -1
                    break
                end
                fileOutputStream.write(b)
                index += 1
            end
            @logUtil.putF("Wrote Bytes: " + (index).to_s, self, @commonStrings.INIT)
            fileOutputStream.flush()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.INIT, e)
        ensure
            ::Org::Allbinary::Logic::Io::StreamUtil.getInstance().close(fileOutputStream)
        end
    end
end

module ::Java; module Io; autoload :InputStream, "java/io/InputStream" unless const_defined?(:InputStream, false); end; end
module ::Java; module Io; autoload :OutputStream, "java/io/OutputStream" unless const_defined?(:OutputStream, false); end; end
module ::Org; module Allbinary; module Business; module Init; autoload :LicenseInitInfoUtil, "org/allbinary/business/init/LicenseInitInfoUtil" unless const_defined?(:LicenseInitInfoUtil, false); end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Resource; autoload :ResourceUtil, "org/allbinary/data/resource/ResourceUtil" unless const_defined?(:ResourceUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :FileStreamFactory, "org/allbinary/logic/io/FileStreamFactory" unless const_defined?(:FileStreamFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :StreamUtil, "org/allbinary/logic/io/StreamUtil" unless const_defined?(:StreamUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :FileFactory, "org/allbinary/logic/io/file/FileFactory" unless const_defined?(:FileFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :SimpleFileUtil, "org/allbinary/logic/io/file/SimpleFileUtil" unless const_defined?(:SimpleFileUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

end; end; end; end; end; end

