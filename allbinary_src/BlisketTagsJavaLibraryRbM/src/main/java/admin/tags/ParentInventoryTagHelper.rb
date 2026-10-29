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
# package admin.tags

# require "javax/servlet/jsp/tagext/Tag"

class ParentInventoryTagHelper
    

    def self.getInstance()
        return ParentInventoryTagHelper.instance
    end
    

    # throws Exception
    def isValid(tagClass, parentTag)
        if parentTag == nil
            raise StandardError.new("Must have parent tag.")
        elsif !(parentTag.is_a?(HelperTag))
            stringBuffer = StringMaker.new()
            stringBuffer.append("Must have at least a ")
            stringBuffer.append("tags.HelperTag")
            stringBuffer.append(" as parent")
            stringBuffer.append("and not: ")
            stringBuffer.append(parentTag.class.name)
            raise StandardError.new(stringBuffer.to_s)
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/string/StringMaker"

class ParentInventoryTagHelper
    @@instance = ParentInventoryTagHelper.new()
end

