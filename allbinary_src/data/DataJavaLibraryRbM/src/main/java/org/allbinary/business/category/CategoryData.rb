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
# package org.allbinary.business.category


module ::Org; module Allbinary; module Business; module Category

class CategoryData
    attr_accessor :PARENT, :NAME, :PATH, :LABEL, :VIEW, :LEVEL, :REQUEST, :ROOTCATEGORY, :UNCRYPTED_EXTENSION, :ENCRYPTED_EXTENSION

    def jfields_org_allbinary_business_category_CategoryData
        @PARENT = "CATEGORY_PARENT"
        @NAME = "CATEGORY_NAME"
        @PATH = "CATEGORY_PATH"
        @LABEL = "CATEGORY_LABEL"
        @VIEW = "CATEGORY_VIEW_CATEGORY"
        @LEVEL = "CATEGORY_LEVEL"
        @REQUEST = "request"
        @ROOTCATEGORY = "Category"
        @UNCRYPTED_EXTENSION = ::Org::Allbinary::Logic::Io::FilePackage::CommonDataFileStrings.getInstance().UNCRYPTED_EXTENSION
        @ENCRYPTED_EXTENSION = ::Org::Allbinary::Logic::Io::FilePackage::CommonDataFileStrings.getInstance().ENCRYPTED_EXTENSION
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_business_category_CategoryData
    end

    def self.instance()
        CategoryData.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        CategoryData.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = CategoryData.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CategoryData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :CommonDataFileStrings, "org/allbinary/logic/io/file/CommonDataFileStrings" unless const_defined?(:CommonDataFileStrings, false); end; end; end; end; end

begin
    CategoryData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

