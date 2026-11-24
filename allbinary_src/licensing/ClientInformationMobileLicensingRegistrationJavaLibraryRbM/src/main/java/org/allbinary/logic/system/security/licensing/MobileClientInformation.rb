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

require "java/lang/JavaOverload"
require "org/allbinary/logic/system/security/licensing/AbeClientInformation"

module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing

class MobileClientInformation < AbeClientInformation
    

    def initialize(name, version, specialName, shortName)
        super(name, version, ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(specialName).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE).append(PartnerIdentifierFileUtil.getInstance().get()).to_s, shortName)
        string = self.getSpecialName()
        number = string[string.length - 1..]
        if Integer.getInteger(number) == nil
            self.setHardSale(false)
        end
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        if self.isHardSale()
            @logUtil.putF("Use Hard Coded Selling", self, commonStrings.CONSTRUCTOR)
        else
            @logUtil.putF("Don't Use Hard Coded Selling", self, commonStrings.CONSTRUCTOR)
        end
    end
    

    def toHashtable()
        hashtable = MobileClientInformation.superclass.java_super_method(:toHashtable, 0).bind(self).call()
        registrationConfiguration = ::Org::Allbinary::Logic::System::Security::Licensing::Registration::RegistrationConfiguration.getInstance()
        hashtable.put(registrationConfiguration.NAME, registrationConfiguration.getRegistrationCode())
        return hashtable
    end
    java_overload :toHashtable, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:DESC, "Mobile")
        begin
            const_set(:ANDROID_DESC, "Android" + (MobileClientInformation::DESC).to_s)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "MobileClientInformation"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:DESC, :ANDROID_DESC].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; module Registration; autoload :RegistrationConfiguration, "org/allbinary/logic/system/security/licensing/registration/RegistrationConfiguration" unless const_defined?(:RegistrationConfiguration, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
autoload :PartnerIdentifierFileUtil, "org/allbinary/logic/system/security/licensing/PartnerIdentifierFileUtil" unless const_defined?(:PartnerIdentifierFileUtil, false)

begin
    MobileClientInformation.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

