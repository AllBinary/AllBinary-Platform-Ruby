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

class UpdateOrderTag < TableTag
    

    def initialize()
        super()
        self.setTagHelperFactory(UpdateOrderHelperFactory.new())
        self.setTagRequestHelperFactory(UpdateOrderHelperFactory.new())
    end
end

require "admin/taghelpers/UpdateOrderHelperFactory"

