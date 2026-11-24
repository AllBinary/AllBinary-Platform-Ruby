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
require "admin/taghelpers/ModifyTableInterface"

module ::Admin; module Taghelpers

class ModifyTable
    include ModifyTableInterface
    attr_accessor :commonStrings, :tagStrings

    def jfields_admin_taghelpers_ModifyTable
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @tagStrings = ::Tags::TagStrings.getInstance()
    end

    def initialize
        jfields_admin_taghelpers_ModifyTable
    end
    

    # throws Exception
    def insert()
        raise RuntimeError.new()
    end
    java_overload :insert, 0
    

    # throws Exception
    def delete()
        raise RuntimeError.new()
    end
    java_overload :delete, 0
    

    # throws Exception
    def update()
        raise RuntimeError.new()
    end
    java_overload :update, 0
end

module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Tags; autoload :TagStrings, "tags/TagStrings" unless const_defined?(:TagStrings, false); end

end; end

