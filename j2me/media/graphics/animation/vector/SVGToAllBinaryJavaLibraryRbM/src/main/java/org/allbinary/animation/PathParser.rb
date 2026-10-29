# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.animation


class PathParser
    

    def self.tokenize(d)
        tokens = BasicArrayListD.new()
        sb = String.new()
        (0...d.length).each do |i|
            c = d[i]
            if c == " " || c == "," || c == "\t" || c == "\n" || c == "\r"
                if sb.length() > 0
                    tokens.add(sb.to_s)
                    sb.setLength(0)
                end
            elsif c == "M" || c == "m" || c == "L" || c == "l" || c == "V" || c == "v" || c == "C" || c == "c" || c == "Z" || c == "z"
                if sb.length() > 0
                    tokens.add(sb.to_s)
                    sb.setLength(0)
                end
                tokens.add((c).to_s)
            else
                sb.append(c)
            end
        end
        if sb.length() > 0
            tokens.add(sb.to_s)
        end
        res = Array.new(tokens.size(), nil)
        tokens.toArrayType(res)
        return res
    end
    

    def self.parsePath(d, outX, outY, maxPoints)
        tokens = PathParser.tokenize(d)
        count = [0]
        fixedPoint = FixedPoint.getInstance()
        curX = 0
        curY = 0
        startX = 0
        startY = 0
        idx = 0
        while idx < tokens.length
            tok = tokens[((idx += 1) - 1)]
            cmd = tok[0]
            if cmd == "M" || cmd == "m"
                x = fixedPoint.toFixed(Float(tokens[((idx += 1) - 1)]))
                y = fixedPoint.toFixed(Float(tokens[((idx += 1) - 1)]))
                if cmd == "m"
                    x += curX
                    y += curY
                end
                curX = x
                curY = y
                startX = x
                startY = y
                outX[count[0]] = curX
                outY[count[0]] = curY
                count[0] += 1
            elsif cmd == "L" || cmd == "l"
                x = fixedPoint.toFixed(Float(tokens[((idx += 1) - 1)]))
                y = fixedPoint.toFixed(Float(tokens[((idx += 1) - 1)]))
                if cmd == "l"
                    x += curX
                    y += curY
                end
                curX = x
                curY = y
                outX[count[0]] = curX
                outY[count[0]] = curY
                count[0] += 1
            elsif cmd == "V" || cmd == "v"
                y = fixedPoint.toFixed(Float(tokens[((idx += 1) - 1)]))
                if cmd == "v"
                    y += curY
                end
                curY = y
                outX[count[0]] = curX
                outY[count[0]] = curY
                count[0] += 1
            elsif cmd == "C" || cmd == "c"
                x1 = fixedPoint.toFixed(Float(tokens[((idx += 1) - 1)]))
                y1 = fixedPoint.toFixed(Float(tokens[((idx += 1) - 1)]))
                x2 = fixedPoint.toFixed(Float(tokens[((idx += 1) - 1)]))
                y2 = fixedPoint.toFixed(Float(tokens[((idx += 1) - 1)]))
                x3 = fixedPoint.toFixed(Float(tokens[((idx += 1) - 1)]))
                y3 = fixedPoint.toFixed(Float(tokens[((idx += 1) - 1)]))
                if cmd == "c"
                    x1 += curX
                    y1 += curY
                    x2 += curX
                    y2 += curY
                    x3 += curX
                    y3 += curY
                end
                PGUtil.getInstance().flattenCubicBezier(curX, curY, x1, y1, x2, y2, x3, y3, outX, outY, count, maxPoints)
                curX = x3
                curY = y3
            elsif cmd == "Z" || cmd == "z"
                curX = startX
                curY = startY
                outX[count[0]] = curX
                outY[count[0]] = curY
                count[0] += 1
            end
            while idx < tokens.length && !PathParser.isCommand(tokens[idx])
                if cmd == "M" || cmd == "m" || cmd == "L" || cmd == "l"
                    x = fixedPoint.toFixed(Float(tokens[((idx += 1) - 1)]))
                    y = fixedPoint.toFixed(Float(tokens[((idx += 1) - 1)]))
                    if cmd == "m" || cmd == "l"
                        x += curX
                        y += curY
                    end
                    curX = x
                    curY = y
                    outX[count[0]] = curX
                    outY[count[0]] = curY
                    count[0] += 1
                elsif cmd == "V" || cmd == "v"
                    y = fixedPoint.toFixed(Float(tokens[((idx += 1) - 1)]))
                    if cmd == "v"
                        y += curY
                    end
                    curY = y
                    outX[count[0]] = curX
                    outY[count[0]] = curY
                    count[0] += 1
                end
            end
        end
        return count[0]
    end
    

    def self.isCommand(tok)
        c = tok[0]
        return ("MmLlVvCcZz".index(c) || -1) >= 0
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/animation/FixedPoint"
require "org/allbinary/animation/PGUtil"

