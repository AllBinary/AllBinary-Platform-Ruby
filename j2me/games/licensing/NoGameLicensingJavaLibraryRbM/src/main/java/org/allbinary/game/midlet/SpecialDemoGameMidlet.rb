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
# package org.allbinary.game.midlet

require "org/allbinary/game/midlet/DemoGameMidlet"

class SpecialDemoGameMidlet < DemoGameMidlet
    

    def initialize(clientInformationFactory, licenseLoadingType, demoSetupFactory, licenseCheckRunnableFactory)
        super(clientInformationFactory)
    end
    

    def initView()
    end
    

    def preInit()
        LicenseServerInitFileUtil.new().init()
    end
end

require "org/allbinary/logic/system/security/licensing/ClientInformationFactory"
require "org/allbinary/logic/system/security/licensing/LicenseServerInitFileUtil"
require "org/allbinary/game/midlet/LicenseCheckRunnableFactory"
require "org/allbinary/game/midlet/LicenseLoadingType"
require "org/allbinary/game/midlet/LicensedDemoSetupFactory"

