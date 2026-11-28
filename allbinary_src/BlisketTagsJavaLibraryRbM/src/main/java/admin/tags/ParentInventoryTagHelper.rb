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

require "java/lang/JavaClass"
# require "javax/servlet/jsp/tagext/Tag"

module ::Admin; module Tags

class ParentInventoryTagHelper
    

    def self.getInstance()
        return @@instance
    end
    

    # throws Exception
    def isValid(tagClass, parentTag)
        if parentTag == nil
            raise StandardError.new("Must have parent tag.")
        elsif !parentTag.is_a?(::Tags::HelperTag)
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append("Must have at least a ")
            stringBuffer.append("tags.HelperTag")
            stringBuffer.append(" as parent")
            stringBuffer.append("and not: ")
            stringBuffer.append(parentTag.class.java_name)
            raise StandardError.new(stringBuffer.to_s)
        end
    end

    def self.instance()
        ParentInventoryTagHelper.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ParentInventoryTagHelper.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ParentInventoryTagHelper.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ParentInventoryTagHelper"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Tags; autoload :HelperTag, "tags/HelperTag" unless const_defined?(:HelperTag, false); end

begin
    ParentInventoryTagHelper.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end

