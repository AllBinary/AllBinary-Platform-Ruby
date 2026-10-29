# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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


class BaseSecretComposite
    

    # throws Exception
    def encrypt(array)
        return NullUtil.getInstance().NULL_BYTE_ARRAY
    end
    

    # throws Exception
    def decrypt(array)
        return NullUtil.getInstance().NULL_BYTE_ARRAY
    end
end

require "org/allbinary/logic/NullUtil"

class BaseSecretComposite
    NULL_SECRET_COMPOSITE = BaseSecretComposite.new()
end

