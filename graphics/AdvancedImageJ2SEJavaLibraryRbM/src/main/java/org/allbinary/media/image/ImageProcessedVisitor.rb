# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.media.image

# require "java/awt/image/BufferedImage"
# require "java/io/IOException"
require "org/allbinary/media/image/ImageProcessorInputCompositeInterface"

module ImageProcessedVisitor
    include ImageProcessorInputCompositeInterface
    

    # throws IOException
    def visit(generatedBufferedImage, nameEnding, index)
        raise NotImplementedError
    end
end

