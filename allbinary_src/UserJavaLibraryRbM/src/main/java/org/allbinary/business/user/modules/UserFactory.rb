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
# package org.allbinary.business.user.modules

require "java/lang/JavaOverload"
require "org/allbinary/business/user/UserFactoryInterface"

module ::Org; module Allbinary; module Business; module User; module Modules

class UserFactory
    include ::Org::Allbinary::Business::User::UserFactoryInterface
    

    def initialize()
    end
    

    # throws Exception
    def getInstance(hashMap)
        return User.new(hashMap)
    end
    java_overload :getInstance, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module User; autoload :UserInterface, "org/allbinary/business/user/UserInterface" unless const_defined?(:UserInterface, false); end; end; end; end
autoload :User, "org/allbinary/business/user/modules/User" unless const_defined?(:User, false)

end; end; end; end; end

