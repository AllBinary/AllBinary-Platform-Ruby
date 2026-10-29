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
# package org.allbinary.logic.java.jar

# require "java/io/IOException"
# require "java/net/URL"
# require "java/net/URLConnection"
# require "java/util/jar/JarEntry"
# require "java/util/jar/JarInputStream"

class JarUtil
    attr_accessor :jarURL

    def initialize_fields
        @jarURL = nil
    end
    

    def initialize(jarURL)
        initialize_fields
        @jarURL = jarURL
    end
    

    def show()
        cache = Array.new(1024, 0)
        begin
            conn = @jarURL.openConnection()
            jis = JarInputStream.new(conn.getInputStream())
            while true
                entry = jis.getNextJarEntry()
                if entry != nil
                    if !entry.isDirectory()
                        offset = 0
                        i = 0
                        while ((i = jis.read(cache, offset, cache.length - offset))) != -1
                            offset += i
                            if offset >= cache.length
                                newcache = Array.new(cache.length + 1024, 0)
                                newcache[0, cache.length] = cache[0, cache.length]
                                cache = newcache
                            end
                        end
                        tmp = Array.new(offset, 0)
                        tmp[0, offset] = cache[0, offset]
                        puts(entry.getName())
                    end
                else
                    break
                end
            end
        rescue IOError => ex
            puts(ex)
            puts(ex.full_message)
        end
    end
    

    # throws Exception
    def self.main(args)
        JarUtil.new(URL.new("file:///G:/mnt/bc/mydev/working/j2me/MiniSpaceWars/MiniSpaceWars/dist/MiniSpaceWars.jar")).show()
    end
end

require "java/lang/System"

