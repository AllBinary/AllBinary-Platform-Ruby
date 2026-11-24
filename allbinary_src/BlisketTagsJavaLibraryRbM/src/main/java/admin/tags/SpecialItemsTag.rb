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

class SpecialItemsTag < TableTag
    

    def initialize()
        super()
        self.setTagHelperFactory(::Admin::Taghelpers::SpecialItemsHelperFactory.new())
        self.setTagRequestHelperFactory(::Admin::Taghelpers::SpecialItemsRequestHelperFactory.new())
    end
end

module ::Admin; module Taghelpers; autoload :SpecialItemsHelperFactory, "admin/taghelpers/SpecialItemsHelperFactory" unless const_defined?(:SpecialItemsHelperFactory, false); end; end
module ::Admin; module Taghelpers; autoload :SpecialItemsRequestHelperFactory, "admin/taghelpers/SpecialItemsRequestHelperFactory" unless const_defined?(:SpecialItemsRequestHelperFactory, false); end; end

end; end

