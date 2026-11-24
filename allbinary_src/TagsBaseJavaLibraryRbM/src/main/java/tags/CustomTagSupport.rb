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

require "java/lang/JavaOverload"
# require "javax/servlet/jsp/tagext/TagSupport"

module ::Tags

class CustomTagSupport < TagSupport
    attr_accessor :commonStrings, :tagStrings

    def jfields_tags_CustomTagSupport
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @tagStrings = TagStrings.getInstance()
    end

    def initialize
        super()
        jfields_tags_CustomTagSupport
    end
end

module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :TagStrings, "tags/TagStrings" unless const_defined?(:TagStrings, false)

end

