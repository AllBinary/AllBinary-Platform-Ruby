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
# package org.allbinary.logic.system.loader

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/logic/system/loader/NativeLibraryHelperWrapper"

module ::Org; module Allbinary; module Logic; module System; module Loader

class SecuredNativeLibraryHelperWrapper < NativeLibraryHelperWrapper
    attr_accessor :securedNativeLibraryInterface

    def jfields_org_allbinary_logic_system_loader_SecuredNativeLibraryHelperWrapper
        @securedNativeLibraryInterface = nil unless instance_variable_defined?(:@securedNativeLibraryInterface)
    end
    

    def initialize(securedNativeLibraryInterface)
        super(securedNativeLibraryInterface.getLibraryName())
        jfields_org_allbinary_logic_system_loader_SecuredNativeLibraryHelperWrapper
        @securedNativeLibraryInterface = securedNativeLibraryInterface
    end
    

    # throws LicensingException
    def unlock(abeClientInformation)
        return @securedNativeLibraryInterface.unlock(::Org::Allbinary::Logic::System::Security::AbKeys.getInstance().getKey(abeClientInformation, @securedNativeLibraryInterface.getName()))
    end
    java_overload :unlock, 1
end

module ::Org; module Allbinary; module Logic; module System; module Security; autoload :AbKeys, "org/allbinary/logic/system/security/AbKeys" unless const_defined?(:AbKeys, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LicensingException, "org/allbinary/logic/system/security/licensing/LicensingException" unless const_defined?(:LicensingException, false); end; end; end; end; end; end
autoload :SecuredNativeLibraryInterface, "org/allbinary/logic/system/loader/SecuredNativeLibraryInterface" unless const_defined?(:SecuredNativeLibraryInterface, false)

end; end; end; end; end

