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
# package org.allbinary.logic.system

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Logic; module System

class SoftwareInformation
    attr_accessor :name, :shortName, :version

    def jfields_org_allbinary_logic_system_SoftwareInformation
        @name = nil unless instance_variable_defined?(:@name)
        @shortName = nil unless instance_variable_defined?(:@shortName)
        @version = nil unless instance_variable_defined?(:@version)
    end
    

    def initialize(name, version, shortName)
        jfields_org_allbinary_logic_system_SoftwareInformation
        @name = name
        @version = version
        @shortName = ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(shortName).append(::Org::Allbinary::KotlinUtil.getShortName()).to_s
    end
    

    def getName()
        return @name
    end
    

    def getVersion()
        return @version
    end
    

    def toShortString()
        return @shortName
    end
    

    def toString()
        _NAME = "Name: "
        _VERSION = "Version: "
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(_NAME)
        stringBuffer.append(self.getName())
        stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE)
        stringBuffer.append(_VERSION)
        stringBuffer.append(self.getVersion())
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; autoload :KotlinUtil, "org/allbinary/KotlinUtil" unless const_defined?(:KotlinUtil, false); end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end

end; end; end; end

