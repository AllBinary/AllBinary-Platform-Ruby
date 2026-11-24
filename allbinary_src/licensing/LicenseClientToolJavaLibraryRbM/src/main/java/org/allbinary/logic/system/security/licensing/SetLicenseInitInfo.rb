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

# require "java/io/BufferedReader"
# require "java/io/InputStreamReader"
# require "java/io/File"
# require "java/io/FileReader"
# require "java/io/LineNumberReader"

module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing

class SetLicenseInitInfo
    attr_accessor :vector

    def jfields_org_allbinary_logic_system_security_licensing_SetLicenseInitInfo
        @vector = BasicArrayListD.new()
    end
    

    def initialize(options)
        jfields_org_allbinary_logic_system_security_licensing_SetLicenseInitInfo
        ::Org::Allbinary::Business::Init::LicenseInitInfoUtil.getInstance().setFilePath(PrintLicenseInitInfo::PATH + ::Org::Allbinary::Globals::PATH_GLOBALS.getInstance().INIT_PATH)
        (1...options.length).each do |index|
            @vector.add(options[index])
        end
    end
    

    # throws Exception
    def getLicenseInitInfo()
        licenseInitInfoUtil = ::Org::Allbinary::Business::Init::LicenseInitInfoUtil.getInstance()
        if ::Org::Allbinary::Logic::Io::FilePackage::FileFactory.getInstance().isFile(licenseInitInfoUtil.INITFILENAME)
            return licenseInitInfoUtil.read()
        else
            return ::Org::Allbinary::Business::Init::LicenseInitInfo.new()
        end
    end
    

    def createNewLicenseInitInfo(licenceServerVector)
        begin
            if licenceServerVector == nil
                raise StandardError.new("null BasicArrayList Passed - Just Make Empty if you want")
            end
            licenseInitInfo = self.getLicenseInitInfo()
            puts("License Serv Example: http://www.dartstatistics.com/LicServ/serverssl.php")
            licenseInitInfo.clearServers()
            file = File.new((PrintLicenseInitInfo::PATH).to_s + "licenseservers.txt")
            reader = FileReader.new(file)
            lineNumberReader = LineNumberReader.new(reader)
            while lineNumberReader.ready()
                licenseInitInfo.addServer(lineNumberReader.readLine())
            end
            ::Org::Allbinary::Business::Init::LicenseInitInfoUtil.getInstance().write(licenseInitInfo)
            ::Org::Allbinary::Business::Init::LicenseInitInfoUtil.getInstance().read()
        rescue StandardError => e
            print("Error: " + (e).to_s)
            puts(e.full_message)
        end
    end
    

    # throws Exception
    def self.main(args)
        initInfo = SetLicenseInitInfo.new(args)
        initInfo.createNewLicenseInitInfo(BasicArrayListD.new())
    end

    def self.stdinput()
        SetLicenseInitInfo.java_static_fields unless @java_static_fields_started
        return defined?(@@stdinput) ? @@stdinput : nil
    end

    def self.stdinput=(value)
        SetLicenseInitInfo.java_static_fields unless @java_static_fields_started
        @@stdinput = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@stdinput = BufferedReader.new(InputStreamReader.new(::Java::Lang::System.in_))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "SetLicenseInitInfo"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Business; module Init; autoload :LicenseInitInfo, "org/allbinary/business/init/LicenseInitInfo" unless const_defined?(:LicenseInitInfo, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Init; autoload :LicenseInitInfoUtil, "org/allbinary/business/init/LicenseInitInfoUtil" unless const_defined?(:LicenseInitInfoUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :FileFactory, "org/allbinary/logic/io/file/FileFactory" unless const_defined?(:FileFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :PATH_GLOBALS, "org/allbinary/globals/PATH_GLOBALS" unless const_defined?(:PATH_GLOBALS, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
autoload :PrintLicenseInitInfo, "org/allbinary/logic/system/security/licensing/PrintLicenseInitInfo" unless const_defined?(:PrintLicenseInitInfo, false)
require "java/lang/System"

begin
    SetLicenseInitInfo.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

