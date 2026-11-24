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

require "java/lang/JavaOverload"
# require "javax/mail/internet/MimeMessage"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/data/tree/dom/document/mapping/DomDocumentMappingInterface"

module ::Org; module Allbinary; module Logic; module Communication; module Smtp

module EmailInterface
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    include ::Org::Allbinary::DataPackage::Tree::Dom::Document::Mapping::DomDocumentMappingInterface
    

    def getDebugInfo()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getDebugInfo, 0
    

    def getMimeMessage()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getMimeMessage, 0
    

    # throws Exception
    def log()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :log, 0
end

end; end; end; end; end

