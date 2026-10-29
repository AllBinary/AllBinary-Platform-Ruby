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

class SetLicenseInitInfo
    attr_accessor :vector

    def initialize_fields
        @vector = BasicArrayListD.new()
    end
    

    def initialize(options)
        initialize_fields
        LicenseInitInfoUtil.getInstance().setFilePath(PrintLicenseInitInfo::PATH + PATH_GLOBALS.getInstance().INIT_PATH)
        (1...options.length).each do |index|
            @vector.add(options[index])
        end
    end
    

    # throws Exception
    def getLicenseInitInfo()
        licenseInitInfoUtil = LicenseInitInfoUtil.getInstance()
        if FileFactory.getInstance().isFile(licenseInitInfoUtil.INITFILENAME)
            return licenseInitInfoUtil.read()
        else
            return LicenseInitInfo.new()
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
            while true
                line = lineNumberReader.readLine()
                if line != nil
                    licenseInitInfo.addServer(line)
                else
                    break
                end
            end
            LicenseInitInfoUtil.getInstance().write(licenseInitInfo)
            LicenseInitInfoUtil.getInstance().read()
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
        return defined?(@@stdinput) ? @@stdinput : nil
    end

    def self.stdinput=(value)
        @@stdinput = value
    end
end

require "org/allbinary/business/init/LicenseInitInfo"
require "org/allbinary/business/init/LicenseInitInfoUtil"
require "org/allbinary/logic/io/file/FileFactory"
require "org/allbinary/globals/PATH_GLOBALS"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/logic/system/security/licensing/PrintLicenseInitInfo"
require "java/lang/System"

class SetLicenseInitInfo
    @@stdinput = BufferedReader.new(InputStreamReader.new(System.in_))
end

