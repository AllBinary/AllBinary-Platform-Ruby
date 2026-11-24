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

require "java/lang/JavaOverload"
# require "java/io/IOException"
# require "javax/servlet/http/HttpServletRequest"
require "org/apache/commons/fileupload/FileUpload"

module ::Org; module Allbinary; module Logic; module Communication; module Http; module FilePackage; module Upload

class AbFileUpload < ::Org::Apache::Commons::Fileupload::FileUpload
    

    def initialize(fileItemFactory)
        super(fileItemFactory)
    end
    

    # throws FileUploadException, IOException
    def getItemIterator(request)
        return AbFileUpload.superclass.java_super_method(:getItemIterator, 1).bind(self).call(::Org::Apache::Commons::Fileupload::Servlet::ServletRequestContext.new(request))
    end
    java_overload :getItemIterator, 1
end

module ::Org; module Apache; module Commons; module Fileupload; autoload :FileItemFactory, "org/apache/commons/fileupload/FileItemFactory" unless const_defined?(:FileItemFactory, false); end; end; end; end
module ::Org; module Apache; module Commons; module Fileupload; autoload :FileItemIterator, "org/apache/commons/fileupload/FileItemIterator" unless const_defined?(:FileItemIterator, false); end; end; end; end
module ::Org; module Apache; module Commons; module Fileupload; autoload :FileUploadException, "org/apache/commons/fileupload/FileUploadException" unless const_defined?(:FileUploadException, false); end; end; end; end
module ::Org; module Apache; module Commons; module Fileupload; module Servlet; autoload :ServletRequestContext, "org/apache/commons/fileupload/servlet/ServletRequestContext" unless const_defined?(:ServletRequestContext, false); end; end; end; end; end

end; end; end; end; end; end; end

