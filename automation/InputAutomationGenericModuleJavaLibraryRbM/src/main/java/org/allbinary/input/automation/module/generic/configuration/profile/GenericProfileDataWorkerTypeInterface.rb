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
# package org.allbinary.input.automation.module.generic.configuration.profile


module GenericProfileDataWorkerTypeInterface
    

    def getName()
        raise NotImplementedError
    end
    

    def setName(name)
        raise NotImplementedError
    end
    

    def toString()
        raise NotImplementedError
    end
    alias_method :to_s, :toString
    

    # throws Exception
    def toXmlNode(document)
        raise NotImplementedError
    end
end

require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

