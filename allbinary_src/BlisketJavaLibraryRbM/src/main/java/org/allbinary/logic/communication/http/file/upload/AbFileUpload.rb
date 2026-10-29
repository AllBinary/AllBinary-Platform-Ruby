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
# package org.allbinary.logic.communication.http.file.upload

# require "java/io/IOException"
# require "javax/servlet/http/HttpServletRequest"
require "org/apache/commons/fileupload/FileUpload"

class AbFileUpload < FileUpload
    

    def initialize(fileItemFactory)
        super(fileItemFactory)
    end
    

    # throws FileUploadException, IOException
    def getItemIterator(request)
        return super(ServletRequestContext.new(request))
    end
end

require "org/apache/commons/fileupload/FileItemFactory"
require "org/apache/commons/fileupload/FileItemIterator"
require "org/apache/commons/fileupload/FileUploadException"
require "org/apache/commons/fileupload/servlet/ServletRequestContext"

