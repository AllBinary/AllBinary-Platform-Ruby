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
# package org.allbinary.logic.system.hardware.components.linux

require "java/lang/JavaOverload"
require "org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface"
require "org/allbinary/logic/system/hardware/components/interfaces/MachineAccessControlAddressInterface"

module ::Org; module Allbinary; module Logic; module System; module Hardware; module Components; module Linux

class MachineAccessControlAddress
    include ::Org::Allbinary::Logic::System::Hardware::Components::Interfaces::HardwareComponentInterface
    include ::Org::Allbinary::Logic::System::Hardware::Components::Interfaces::MachineAccessControlAddressInterface
    

    def initialize()
    end
    

    def compareTo(componentInterface)
        return true
    end
    java_overload :compareTo, 1
    

    def toString()
        return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end

end; end; end; end; end; end; end

