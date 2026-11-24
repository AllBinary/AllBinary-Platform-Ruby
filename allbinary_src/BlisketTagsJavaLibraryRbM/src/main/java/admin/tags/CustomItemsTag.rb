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

class CustomItemsTag < TableTag
    

    def initialize()
        super()
        self.setTagHelperFactory(::Admin::Taghelpers::CustomItemsHelperFactory.new())
        self.setTagRequestHelperFactory(::Admin::Taghelpers::CustomItemsRequestHelperFactory.new())
    end
end

module ::Admin; module Taghelpers; autoload :CustomItemsHelperFactory, "admin/taghelpers/CustomItemsHelperFactory" unless const_defined?(:CustomItemsHelperFactory, false); end; end
module ::Admin; module Taghelpers; autoload :CustomItemsRequestHelperFactory, "admin/taghelpers/CustomItemsRequestHelperFactory" unless const_defined?(:CustomItemsRequestHelperFactory, false); end; end

end; end

