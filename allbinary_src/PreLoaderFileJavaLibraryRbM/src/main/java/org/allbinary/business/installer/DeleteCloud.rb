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
# package org.allbinary.business.installer


class DeleteCloud
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize()
        initialize_fields
    end
    

    def delete(prePath, current, total)
        begin
            if AbIOSystem.getInstance().isType("com.vobject.appengine.java.io")
                stringBuffer = StringMaker.new()
                stringBuffer.append(URLGLOBALS.getWebappPath())
                stringBuffer.append(prePath)
                path = AbPath.new(stringBuffer.to_s, StringUtil.getInstance().EMPTY_STRING)
                file = AbFile.createAbFileFromAbPath(path)
                fileBasicArrayList = Directory.getInstance().search(file, true)
                size = fileBasicArrayList.size()
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append("Searched: ")
                stringBuffer.append(path.toFileSystemString())
                stringBuffer.append(" BasicArrayList: ")
                stringBuffer.appendint(size)
                portion = size / total + 1
                start = portion * current
                end_ = start + portion
                if end_ > size
                    end_ = size
                end
                stringBuffer.append(" Section: ")
                stringBuffer.appendint(start)
                stringBuffer.append(" - ")
                stringBuffer.appendint(end_)
                @logUtil.putF(stringBuffer.to_s, self, "initialize()")
                nextFile = nil
                (start...end_).each do |index|
                    nextFile = fileBasicArrayList.get(index)
                    begin
                        if nextFile.getPath().indexOf(FileUploadData.getInstance().FILE) < 0
                            nextFile.delete()
                        end
                    rescue StandardError => e
                    end
                end
                @logUtil.putF("Deleted Files From Cloud", self, "initialize()")
            end
            return true
        rescue StandardError => e
            @logUtil.put("Unable to copy installer files into cloud", self, "initialize()", e)
            return false
        end
    end
end

require "org/allbinary/globals/URLGLOBALS"
require "org/allbinary/logic/communication/http/file/upload/FileUploadData"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/AbIOSystem"
require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/file/directory/Directory"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/util/BasicArrayList"

