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

class PermissionItemsTag < TableTag
    

    def initialize()
        super()
        self.setTagHelperFactory(::Admin::Taghelpers::PermissionItemsHelperFactory.new())
        self.setTagRequestHelperFactory(::Admin::Taghelpers::PermissionItemsRequestHelperFactory.new())
    end
end

module ::Admin; module Taghelpers; autoload :PermissionItemsHelperFactory, "admin/taghelpers/PermissionItemsHelperFactory" unless const_defined?(:PermissionItemsHelperFactory, false); end; end
module ::Admin; module Taghelpers; autoload :PermissionItemsRequestHelperFactory, "admin/taghelpers/PermissionItemsRequestHelperFactory" unless const_defined?(:PermissionItemsRequestHelperFactory, false); end; end

end; end

