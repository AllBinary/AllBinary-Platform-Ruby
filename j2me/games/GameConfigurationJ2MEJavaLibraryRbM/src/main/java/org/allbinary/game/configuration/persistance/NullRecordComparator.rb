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
# package org.allbinary.game.configuration.persistance

# require "javax/microedition/rms/RecordComparator"

class NullRecordComparator
    include RecordComparator
    

    def compare(rec1, rec2)
        return 0
    end
end

class NullRecordComparator
    NULL_RECORD_COMPARATOR = NullRecordComparator.new()
end

