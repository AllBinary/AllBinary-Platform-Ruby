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


class AllBinaryAndroidGameInitializationUtil
    

    def self.init()
        resourceUtil = ResourceUtil.getInstance()
        androidResources = AndroidResources.getInstance()
        licenseInitInfoUtil = LicenseInitInfoUtil.getInstance()
        resourceUtil.addResource(licenseInitInfoUtil.INITFILENAME, (androidResources.raw.licenseinitdata).to_s)
        resourceUtil.addResource(PartnerIdentifierFileUtil.getInstance().FILE_NAME, (androidResources.raw.partner).to_s)
    end
end

require "org/allbinary/business/init/LicenseInitInfoUtil"
require "org/allbinary/data/resource/ResourceUtil"
require "org/allbinary/logic/system/security/licensing/PartnerIdentifierFileUtil"

