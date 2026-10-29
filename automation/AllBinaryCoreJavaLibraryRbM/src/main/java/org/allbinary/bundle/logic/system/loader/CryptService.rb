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
# package org.allbinary.bundle.logic.system.loader

# require "java/io/ByteArrayInputStream"
# require "java/io/InputStream"

class CryptService
    attr_accessor :logUtil, :commonStrings, :abCryptUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @abCryptUtil = AbCryptUtil.getInstance()
    end
    

    def initialize()
        initialize_fields
        Globals.getInstance().init(self.class.getClassLoader(), "./")
        @logUtil.putF("Set Globals: " + (URLGLOBALS.getWebappPath()).to_s, self, @commonStrings.CONSTRUCTOR)
    end
    

    def getDecryptedInputStream(abeClientInformation, name, inputStream)
        begin
            key = AbKeys.getInstance().getKey(abeClientInformation, name)
            decrypted = @abCryptUtil.decrypt(inputStream, key)
            return ByteArrayInputStream.new(decrypted)
        rescue LicensingException => e
            self.showLicenseDialog(abeClientInformation, e)
        rescue StandardError => e
            self.showLicenseDialog(abeClientInformation, e)
        end
        return nil
    end
    

    def showLicenseDialog(abeClientInformation, e)
        begin
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.INIT, e)
            basicTextJDialog = BasicTextJDialog.new(e.message)
            begin
                abeLicenseInterface = AbeLicenseInterfaceFactory.getInstance().getLicenseInstance(abeClientInformation)
                if abeLicenseInterface != AbeNoLicense.getInstance()
                    if abeLicenseInterface.isValid()
                        basicTextJDialog.setText("Subscription Invalid")
                    end
                end
            rescue LicensingException => e2
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.INIT, e2)
            end
            basicTextJDialog.addCloseListener(ExitCloseListener.new())
            basicTextJDialog.setVisible(true)
        rescue StandardError => e3
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.INIT, e3)
        end
    end
end

require "org/allbinary/globals/Globals"
require "org/allbinary/globals/URLGLOBALS"
require "org/allbinary/gui/dialog/BasicTextJDialog"
require "org/allbinary/gui/dialog/ExitCloseListener"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/system/security/AbCryptUtil"
require "org/allbinary/logic/system/security/AbKeys"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/system/security/licensing/AbeLicenseInterface"
require "org/allbinary/logic/system/security/licensing/AbeLicenseInterfaceFactory"
require "org/allbinary/logic/system/security/licensing/AbeNoLicense"
require "org/allbinary/logic/system/security/licensing/LicensingException"
require "org/allbinary/string/CommonStrings"

