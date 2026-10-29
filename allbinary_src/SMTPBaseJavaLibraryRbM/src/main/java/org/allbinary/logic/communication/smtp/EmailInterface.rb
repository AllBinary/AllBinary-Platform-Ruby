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
# package org.allbinary.logic.communication.smtp

# require "javax/mail/internet/MimeMessage"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/data/tree/dom/document/mapping/DomDocumentMappingInterface"

module EmailInterface
    include DomNodeInterface
    include DomDocumentMappingInterface
    

    def getDebugInfo()
        raise NotImplementedError
    end
    

    def getMimeMessage()
        raise NotImplementedError
    end
    

    # throws Exception
    def log()
        raise NotImplementedError
    end
end

