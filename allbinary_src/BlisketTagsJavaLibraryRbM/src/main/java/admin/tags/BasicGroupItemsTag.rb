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

require "java/lang/JavaOverload"
require "admin/tags/TableTag"

module ::Admin; module Tags

class BasicGroupItemsTag < TableTag
    attr_accessor :propertiesHashMap

    def jfields_admin_tags_BasicGroupItemsTag
        @propertiesHashMap = nil unless instance_variable_defined?(:@propertiesHashMap)
    end
    

    def initialize()
        super()
        jfields_admin_tags_BasicGroupItemsTag
        self.setTagHelperFactory(::Admin::Taghelpers::BasicGroupItemsHelperFactory.new())
        self.setTagRequestHelperFactory(::Admin::Taghelpers::BasicGroupItemsRequestHelperFactory.new())
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Admin; module Taghelpers; autoload :BasicGroupItemsHelperFactory, "admin/taghelpers/BasicGroupItemsHelperFactory" unless const_defined?(:BasicGroupItemsHelperFactory, false); end; end
module ::Admin; module Taghelpers; autoload :BasicGroupItemsRequestHelperFactory, "admin/taghelpers/BasicGroupItemsRequestHelperFactory" unless const_defined?(:BasicGroupItemsRequestHelperFactory, false); end; end

end; end

