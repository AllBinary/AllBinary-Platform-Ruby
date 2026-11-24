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
require "java/lang/ClassLoader"

module ::Org; module Allbinary; module Logic; module System; module Loader

class NativeLibraryClassLoader < ::Java::Lang::ClassLoader
    attr_accessor :message

    def jfields_org_allbinary_logic_system_loader_NativeLibraryClassLoader
        @message = "This Class Loader Does Not Load Classes - Only For Loading and Unloading of Native Libraries"
    end
    

    def initialize(parent)
        super(parent)
        jfields_org_allbinary_logic_system_loader_NativeLibraryClassLoader
    end
end

end; end; end; end; end

