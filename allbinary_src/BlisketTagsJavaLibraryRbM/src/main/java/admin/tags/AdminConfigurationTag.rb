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

class AdminConfigurationTag < TableTag
    

    def initialize()
        super()
        self.setTagHelperFactory(AdminConfigurationHelperFactory.new())
        self.setTagRequestHelperFactory(AdminConfigurationRequestHelperFactory.new())
    end
end

require "admin/taghelpers/AdminConfigurationHelperFactory"
require "admin/taghelpers/AdminConfigurationRequestHelperFactory"

