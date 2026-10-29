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
# package org.allbinary.logic.io


class FileStreamFactory
    attr_accessor :context

    def initialize_fields
        @context = nil
    end
    

    def self.getInstance()
        if FileStreamFactory::SINGLETON == NullUtil.getInstance().NULL_OBJECT
            FileStreamFactory::SINGLETON = FileStreamFactory.new(ResourceUtil.getInstance().getContext())
        end
        return FileStreamFactory::SINGLETON
    end
    

    def initialize(context)
        initialize_fields
        @context = context
    end
    

    # throws Exception
    def getFileInputStreamInstance(path, fileName)
        return AbFileInputStream.new(self.getContext().openFileInput(fileName))
    end
    

    # throws Exception
    def getFileOutputStreamInstance(path, fileName)
        context = self.getContext()
        context.deleteFile(fileName)
        return AbFileOutputStream.new(context.openFileOutput(fileName, 0))
    end
    

    # throws Exception
    def delete(path, fileName)
        self.getContext().deleteFile(fileName)
    end
    

    def getContext()
        return @context
    end
end

require "android/content/Context"
require "org/allbinary/data/resource/ResourceUtil"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/io/AbFileInputStream"
require "org/allbinary/logic/io/AbFileOutputStream"

class FileStreamFactory
    SINGLETON = NullUtil.getInstance().NULL_OBJECT
end

