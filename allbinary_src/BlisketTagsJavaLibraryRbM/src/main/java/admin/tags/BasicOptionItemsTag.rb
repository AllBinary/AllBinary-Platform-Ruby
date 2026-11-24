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

class BasicOptionItemsTag < TableTag
    attr_accessor :propertiesHashMap

    def jfields_admin_tags_BasicOptionItemsTag
        @propertiesHashMap = nil unless instance_variable_defined?(:@propertiesHashMap)
    end
    

    def initialize()
        super()
        jfields_admin_tags_BasicOptionItemsTag
        self.setTagHelperFactory(::Admin::Taghelpers::BasicOptionItemsHelperFactory.new())
        self.setTagRequestHelperFactory(::Admin::Taghelpers::BasicOptionItemsRequestHelperFactory.new())
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Admin; module Taghelpers; autoload :BasicOptionItemsHelperFactory, "admin/taghelpers/BasicOptionItemsHelperFactory" unless const_defined?(:BasicOptionItemsHelperFactory, false); end; end
module ::Admin; module Taghelpers; autoload :BasicOptionItemsRequestHelperFactory, "admin/taghelpers/BasicOptionItemsRequestHelperFactory" unless const_defined?(:BasicOptionItemsRequestHelperFactory, false); end; end

end; end

