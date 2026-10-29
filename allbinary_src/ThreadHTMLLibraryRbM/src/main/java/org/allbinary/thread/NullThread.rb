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
# package org.allbinary.thread


class NullThread
end

require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/thread/NullRunnable"
require "java/lang/Thread"

class NullThread
    NULL_THREAD = JavaThread.new(NullRunnable.getInstance(), StringUtil.getInstance().EMPTY_STRING)
end

