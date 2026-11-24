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
# package org.allbinary


module ::Org; module Allbinary

class AllBinaryAndroidGameInitializationUtil
    

    def self.init()
        resourceUtil = ::Org::Allbinary::DataPackage::Resource::ResourceUtil.getInstance()
        androidResources = AndroidResources.getInstance()
        licenseInitInfoUtil = ::Org::Allbinary::Business::Init::LicenseInitInfoUtil.getInstance()
        resourceUtil.addResource(licenseInitInfoUtil.INITFILENAME, (androidResources.raw.licenseinitdata).to_s)
        resourceUtil.addResource(::Org::Allbinary::Logic::System::Security::Licensing::PartnerIdentifierFileUtil.getInstance().FILE_NAME, (androidResources.raw.partner).to_s)
        resourceUtil.addResource(licenseInitInfoUtil.ABOUT, (androidResources.raw.about).to_s)
    end
end

module ::Org; module Allbinary; module Business; module Init; autoload :LicenseInitInfoUtil, "org/allbinary/business/init/LicenseInitInfoUtil" unless const_defined?(:LicenseInitInfoUtil, false); end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Resource; autoload :ResourceUtil, "org/allbinary/data/resource/ResourceUtil" unless const_defined?(:ResourceUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :PartnerIdentifierFileUtil, "org/allbinary/logic/system/security/licensing/PartnerIdentifierFileUtil" unless const_defined?(:PartnerIdentifierFileUtil, false); end; end; end; end; end; end
autoload :AndroidResources, "org/allbinary/AndroidResources" unless const_defined?(:AndroidResources, false)

end; end

