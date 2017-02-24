-- https://www.openprocessing.org/sketch/402537
local elements
      local tot = 80

      function p5.setup()
        p5:createCanvas(800, 600)
        init()
      end

      function p5.draw()
        for i = 1, #elements do
          local el = elements[i]
          el:move()
          el:bounce()
        end
        for j = 0, #elements do
          local el = elements[i]
          for k = i + 1, #elements do
            local el2 = elements[k]
            el:onOverlap(el2)
          end
        end
      end

      function p5.mousePressed()
        init()
      end

      function init()
        p5:background(255)
        elements = {}
        for i = 1, tot do
          local s = math.random(0, 2)
          local col = p5:color(182 * s, 103 * s, 13 * s, 2)
          local EL = Element.new(p5:random(p5.width), p5.height/2, p5:random(40, 60), col)
          table.insert(elements, EL)
        end
      end
