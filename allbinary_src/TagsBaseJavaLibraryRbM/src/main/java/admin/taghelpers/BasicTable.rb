# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package admin.taghelpers

require "java/lang/JavaOverload"
require "admin/taghelpers/BasicTableInterface"

module ::Admin; module Taghelpers

class BasicTable
    include BasicTableInterface
    attr_accessor :commonStrings

    def jfields_admin_taghelpers_BasicTable
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
    end

    def initialize
        jfields_admin_taghelpers_BasicTable
    end
    

    # throws Exception
    def drop()
        raise RuntimeError.new()
    end
    java_overload :drop, 0
    

    # throws Exception
    def create()
        raise RuntimeError.new()
    end
    java_overload :create, 0
    

    # throws Exception
    def restore()
        raise RuntimeError.new()
    end
    java_overload :restore, 0
    

    # throws Exception
    def backup()
        raise RuntimeError.new()
    end
    java_overload :backup, 0
end

module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

end; end

