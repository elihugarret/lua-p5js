<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
    <script src="js/p5.js"></script>
    <script src="js/p5.dom.js"></script>
    <script src="js/p5.sound.js"></script>
    <script type="text/lua">

      local p5 = window

      local x = 70
      local speed = 1
      local radius = 90
      local angle = 0

      function p5.setup()
        p5:createCanvas(800, 500)
        p5:smooth()
        p5:noStroke()
      end

      function p5.draw()
        p5:fill(0, 4)
        p5:stroke(200, 20)
        angle = angle - .005
        p5:translate(x, p5.height / 1.8)
        p5:translate(y, p5.width)
        p5:rotate(p5:noise(angle) + math.sin(angle))
        p5:scale(2, 2, 2)
        p5:triangle(-50, -50, -50, -50, 30, 3)
        p5:triangle(-50, -50, -50, -50, 90, 30)
        p5:triangle(-50, 0, -20, -20, 110, 2)
        x = x + speed
        if x > p5.width + radius then
          x = -radius
        end
      end
    </script>
  </head>
  <body>
  </body>
  <script src="js/starlight.js" data-run-script-tags></script>
</html>
