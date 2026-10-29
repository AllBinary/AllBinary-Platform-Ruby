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
# package tags

# require "javax/servlet/jsp/tagext/TagSupport"

class CustomTagSupport < TagSupport
    attr_accessor :commonStrings, :tagStrings

    def initialize_fields
        @commonStrings = CommonStrings.getInstance()
        @tagStrings = TagStrings.getInstance()
    end

    def initialize
        super()
        initialize_fields
    end
end

require "org/allbinary/string/CommonStrings"
require "tags/TagStrings"

