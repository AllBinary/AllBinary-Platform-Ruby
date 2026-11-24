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

class PrintLicenseInitInfo
    

    def initialize(options)
        ::Org::Allbinary::Business::Init::LicenseInitInfoUtil.getInstance().setFilePath(PrintLicenseInitInfo::PATH + ::Org::Allbinary::Globals::PATH_GLOBALS.getInstance().INIT_PATH)
    end
    

    # throws Exception
    def getLicenseInitInfo()
        licenseInitInfoUtil = ::Org::Allbinary::Business::Init::LicenseInitInfoUtil.getInstance()
        if ::Org::Allbinary::Logic::Io::FilePackage::FileFactory.getInstance().isFile(licenseInitInfoUtil.getFilePath())
            return licenseInitInfoUtil.read()
        else
            puts("No Licence File at: " + (licenseInitInfoUtil.getFilePath()).to_s)
            return ::Org::Allbinary::Business::Init::LicenseInitInfo.new()
        end
    end
    

    def printInitInfo()
        begin
            licenseInitInfo = self.getLicenseInitInfo()
            puts("License ID: " + (licenseInitInfo.getLicenseId()).to_s)
            list = licenseInitInfo.getServerList()
            size = list.size()
            (0...size).each do |index|
                puts("Lic Serv: " + (list.get(index)).to_s)
            end
        rescue StandardError => e
            print("Error: " + (e).to_s)
            puts(e.full_message)
        end
    end
    

    # throws Exception
    def self.main(args)
        initInfo = PrintLicenseInitInfo.new(args)
        initInfo.printInitInfo()
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
        if name == "PrintLicenseInitInfo"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:PATH].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Business; module Init; autoload :LicenseInitInfo, "org/allbinary/business/init/LicenseInitInfo" unless const_defined?(:LicenseInitInfo, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Init; autoload :LicenseInitInfoUtil, "org/allbinary/business/init/LicenseInitInfoUtil" unless const_defined?(:LicenseInitInfoUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :FileFactory, "org/allbinary/logic/io/file/FileFactory" unless const_defined?(:FileFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :PATH_GLOBALS, "org/allbinary/globals/PATH_GLOBALS" unless const_defined?(:PATH_GLOBALS, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
require "java/lang/System"

begin
    PrintLicenseInitInfo.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

