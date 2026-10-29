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

require "admin/tags/TableTag"

class BasicGroupItemsTag < TableTag
    attr_accessor :propertiesHashMap

    def initialize_fields
        @propertiesHashMap = nil
    end
    

    def initialize()
        super()
        initialize_fields
        self.setTagHelperFactory(BasicGroupItemsHelperFactory.new())
        self.setTagRequestHelperFactory(BasicGroupItemsRequestHelperFactory.new())
    end
end

require "java/util/HashMap"
require "admin/taghelpers/BasicGroupItemsHelperFactory"
require "admin/taghelpers/BasicGroupItemsRequestHelperFactory"

