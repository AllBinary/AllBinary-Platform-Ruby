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

require "admin/taghelpers/ModifyTableInterface"

class ModifyTable
    include ModifyTableInterface
    attr_accessor :commonStrings, :tagStrings

    def initialize_fields
        @commonStrings = CommonStrings.getInstance()
        @tagStrings = TagStrings.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    # throws Exception
    def insert()
        raise RuntimeError.new()
    end
    

    # throws Exception
    def delete()
        raise RuntimeError.new()
    end
    

    # throws Exception
    def update()
        raise RuntimeError.new()
    end
end

require "org/allbinary/string/CommonStrings"
require "tags/TagStrings"

