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

require "java/lang/JavaOverload"
require "org/allbinary/game/midlet/DemoGameMidlet"

module ::Org; module Allbinary; module Game; module Midlet

class SpecialDemoGameMidlet < DemoGameMidlet
    

    def initialize(clientInformationFactory, licenseLoadingType, demoSetupFactory, licenseCheckRunnableFactory)
        super(clientInformationFactory)
    end
    

    def initView()
    end
    java_overload :initView, 0
    

    def preInit()
        ::Org::Allbinary::Logic::System::Security::Licensing::LicenseServerInitFileUtil.new().init()
    end
    java_overload :preInit, 0
end

module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :ClientInformationFactory, "org/allbinary/logic/system/security/licensing/ClientInformationFactory" unless const_defined?(:ClientInformationFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LicenseServerInitFileUtil, "org/allbinary/logic/system/security/licensing/LicenseServerInitFileUtil" unless const_defined?(:LicenseServerInitFileUtil, false); end; end; end; end; end; end
autoload :LicenseCheckRunnableFactory, "org/allbinary/game/midlet/LicenseCheckRunnableFactory" unless const_defined?(:LicenseCheckRunnableFactory, false)
autoload :LicenseLoadingType, "org/allbinary/game/midlet/LicenseLoadingType" unless const_defined?(:LicenseLoadingType, false)
autoload :LicensedDemoSetupFactory, "org/allbinary/game/midlet/LicensedDemoSetupFactory" unless const_defined?(:LicensedDemoSetupFactory, false)

end; end; end; end

