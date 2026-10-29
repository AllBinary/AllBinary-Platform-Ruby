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


class CategoryData
    attr_accessor :PARENT, :NAME, :PATH, :LABEL, :VIEW, :LEVEL, :REQUEST, :ROOTCATEGORY, :UNCRYPTED_EXTENSION, :ENCRYPTED_EXTENSION

    def initialize_fields
        @PARENT = "CATEGORY_PARENT"
        @NAME = "CATEGORY_NAME"
        @PATH = "CATEGORY_PATH"
        @LABEL = "CATEGORY_LABEL"
        @VIEW = "CATEGORY_VIEW_CATEGORY"
        @LEVEL = "CATEGORY_LEVEL"
        @REQUEST = "request"
        @ROOTCATEGORY = "Category"
        @UNCRYPTED_EXTENSION = CommonDataFileStrings.getInstance().UNCRYPTED_EXTENSION
        @ENCRYPTED_EXTENSION = CommonDataFileStrings.getInstance().ENCRYPTED_EXTENSION
    end
    

    def self.getInstance()
        return CategoryData.instance
    end
    

    def initialize()
        initialize_fields
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/io/file/CommonDataFileStrings"

class CategoryData
    @@instance = CategoryData.new()
end

