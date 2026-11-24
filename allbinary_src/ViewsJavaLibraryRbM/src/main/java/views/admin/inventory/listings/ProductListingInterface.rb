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
# package views.admin.inventory.listings


module ::Views; module Admin; module Inventory; module Listings

module ProductListingInterface
    

    # throws Exception
    def generateAll_j0()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def generateAll_j1(storeName)
        return super if defined?(super)
        raise NotImplementedError
    end

    def generateAll(*java_overload_args)
        return generateAll_j0(*java_overload_args) if java_overload_args.length == 0
        return generateAll_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method generateAll takes #{java_overload_args.length} arguments"
    end
end

end; end; end; end

