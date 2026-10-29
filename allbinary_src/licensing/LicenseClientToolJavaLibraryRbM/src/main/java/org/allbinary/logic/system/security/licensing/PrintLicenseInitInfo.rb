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


class PrintLicenseInitInfo
    

    def initialize(options)
        LicenseInitInfoUtil.getInstance().setFilePath(PrintLicenseInitInfo::PATH + PATH_GLOBALS.getInstance().INIT_PATH)
    end
    

    # throws Exception
    def getLicenseInitInfo()
        licenseInitInfoUtil = LicenseInitInfoUtil.getInstance()
        if FileFactory.getInstance().isFile(licenseInitInfoUtil.getFilePath())
            return licenseInitInfoUtil.read()
        else
            puts("No Licence File at: " + (licenseInitInfoUtil.getFilePath()).to_s)
            return LicenseInitInfo.new()
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
end

require "org/allbinary/business/init/LicenseInitInfo"
require "org/allbinary/business/init/LicenseInitInfoUtil"
require "org/allbinary/logic/io/file/FileFactory"
require "org/allbinary/globals/PATH_GLOBALS"
require "org/allbinary/util/BasicArrayList"
require "java/lang/System"

class PrintLicenseInitInfo
    PATH = "G:\\mnt\\bc\\mydev\\work\\allbinary_src\\licensing\\data\\"
end

