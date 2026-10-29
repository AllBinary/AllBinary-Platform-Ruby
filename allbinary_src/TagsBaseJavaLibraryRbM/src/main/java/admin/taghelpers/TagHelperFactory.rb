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

# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/TagHelperFactoryInterface"

class TagHelperFactory
    include TagHelperFactoryInterface
    attr_accessor :commonStrings

    def initialize_fields
        @commonStrings = CommonStrings.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    # throws Exception, LicensingException
    def getInstance(hashMap, pageContext)
        raise RuntimeError.new()
    end
end

require "java/util/HashMap"
require "org/allbinary/logic/system/security/licensing/LicensingException"
require "org/allbinary/string/CommonStrings"

