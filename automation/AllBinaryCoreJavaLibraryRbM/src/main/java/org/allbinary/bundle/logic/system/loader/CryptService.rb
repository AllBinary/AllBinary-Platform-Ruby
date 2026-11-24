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


module ::Org; module Allbinary; module Bundle; module Logic; module System; module Loader

class CryptService
    attr_accessor :logUtil, :commonStrings, :abCryptUtil

    def jfields_org_allbinary_bundle_logic_system_loader_CryptService
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @abCryptUtil = ::Org::Allbinary::Logic::System::Security::AbCryptUtil.getInstance()
    end
    

    def initialize()
        jfields_org_allbinary_bundle_logic_system_loader_CryptService
        ::Org::Allbinary::Globals::Globals.getInstance().init(self.class.getClassLoader(), "./")
        @logUtil.putF("Set Globals: " + (::Org::Allbinary::Globals::URLGLOBALS.getWebappPath()).to_s, self, @commonStrings.CONSTRUCTOR)
    end
    

    def getDecryptedInputStream(abeClientInformation, name, inputStream)
        begin
            key = ::Org::Allbinary::Logic::System::Security::AbKeys.getInstance().getKey(abeClientInformation, name)
            decrypted = @abCryptUtil.decrypt(inputStream, key)
            return ::Java::Io::ByteArrayInputStream.new(decrypted)
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            self.showLicenseDialog(abeClientInformation, e)
        rescue StandardError => e
            self.showLicenseDialog(abeClientInformation, e)
        end
        return nil
    end
    

    def showLicenseDialog(abeClientInformation, e)
        begin
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.INIT, e)
            basicTextJDialog = ::Org::Allbinary::Gui::Dialog::BasicTextJDialog.new(e.message)
            begin
                abeLicenseInterface = ::Org::Allbinary::Logic::System::Security::Licensing::AbeLicenseInterfaceFactory.getInstance().getLicenseInstance(abeClientInformation)
                if abeLicenseInterface != ::Org::Allbinary::Logic::System::Security::Licensing::AbeNoLicense.getInstance()
                    if abeLicenseInterface.isValid()
                        basicTextJDialog.setText("Subscription Invalid")
                    end
                end
            rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e2
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.INIT, e2)
            end
            basicTextJDialog.addCloseListener(::Org::Allbinary::Gui::Dialog::ExitCloseListener.new())
            basicTextJDialog.setVisible(true)
        rescue StandardError => e3
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.INIT, e3)
        end
    end
end

module ::Java; module Io; autoload :ByteArrayInputStream, "java/io/ByteArrayInputStream" unless const_defined?(:ByteArrayInputStream, false); end; end
module ::Java; module Io; autoload :InputStream, "java/io/InputStream" unless const_defined?(:InputStream, false); end; end
module ::Org; module Allbinary; module Globals; autoload :Globals, "org/allbinary/globals/Globals" unless const_defined?(:Globals, false); end; end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Gui; module Dialog; autoload :BasicTextJDialog, "org/allbinary/gui/dialog/BasicTextJDialog" unless const_defined?(:BasicTextJDialog, false); end; end; end; end
module ::Org; module Allbinary; module Gui; module Dialog; autoload :ExitCloseListener, "org/allbinary/gui/dialog/ExitCloseListener" unless const_defined?(:ExitCloseListener, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; autoload :AbCryptUtil, "org/allbinary/logic/system/security/AbCryptUtil" unless const_defined?(:AbCryptUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; autoload :AbKeys, "org/allbinary/logic/system/security/AbKeys" unless const_defined?(:AbKeys, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeLicenseInterface, "org/allbinary/logic/system/security/licensing/AbeLicenseInterface" unless const_defined?(:AbeLicenseInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeLicenseInterfaceFactory, "org/allbinary/logic/system/security/licensing/AbeLicenseInterfaceFactory" unless const_defined?(:AbeLicenseInterfaceFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeNoLicense, "org/allbinary/logic/system/security/licensing/AbeNoLicense" unless const_defined?(:AbeNoLicense, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LicensingException, "org/allbinary/logic/system/security/licensing/LicensingException" unless const_defined?(:LicensingException, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

end; end; end; end; end; end

