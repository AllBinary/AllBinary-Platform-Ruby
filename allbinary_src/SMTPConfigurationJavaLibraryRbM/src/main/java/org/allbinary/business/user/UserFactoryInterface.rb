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
# package org.allbinary.business.user

require "java/lang/JavaOverload"
require "java/io/Serializable"

module ::Org; module Allbinary; module Business; module User

module UserFactoryInterface
    include ::Java::Io::Serializable
    

    # throws Exception
    def getInstance(hashMap)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getInstance, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
autoload :UserInterface, "org/allbinary/business/user/UserInterface" unless const_defined?(:UserInterface, false)

end; end; end; end

