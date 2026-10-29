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

require "org/allbinary/logic/system/loader/NativeLibraryHelperWrapper"

class SecuredNativeLibraryHelperWrapper < NativeLibraryHelperWrapper
    attr_accessor :securedNativeLibraryInterface

    def initialize_fields
        @securedNativeLibraryInterface = nil
    end
    

    def initialize(securedNativeLibraryInterface)
        super(securedNativeLibraryInterface.getLibraryName())
        initialize_fields
        @securedNativeLibraryInterface = securedNativeLibraryInterface
    end
    

    # throws LicensingException
    def unlock(abeClientInformation)
        return @securedNativeLibraryInterface.unlock(AbKeys.getInstance().getKey(abeClientInformation, @securedNativeLibraryInterface.getName()))
    end
end

require "org/allbinary/logic/system/security/AbKeys"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/system/security/licensing/LicensingException"
require "org/allbinary/logic/system/loader/SecuredNativeLibraryInterface"

