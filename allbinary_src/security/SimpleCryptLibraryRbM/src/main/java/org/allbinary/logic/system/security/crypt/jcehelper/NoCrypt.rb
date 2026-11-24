# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.logic.system.security.crypt.jcehelper

require "java/lang/JavaOverload"
require "org/allbinary/init/crypt/jcehelper/CryptInterface"

module ::Org; module Allbinary; module Logic; module System; module Security; module Crypt; module Jcehelper

class NoCrypt
    include ::Org::Allbinary::Init::Crypt::Jcehelper::CryptInterface
    

    def encrypt(array)
        return array
    end
    java_overload :encrypt, 1
    

    def decrypt(array)
        return array
    end
    java_overload :decrypt, 1
end

end; end; end; end; end; end; end

