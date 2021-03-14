love.load = function ()
    text="Write here..."
end

love.textinput = function (t)
    text = text..t
end

love.keypressed = function (key)
    if key == "backspace" then
        text = text:sub(1, -2)
    end
end

love.draw = function()

    love.graphics.print("WELCOME TO BLACKJACK!!", 100, 100) 
    love.graphics.print("menu:", 100, 150)
    love.graphics.print("PLAY", 100, 180)
    love.graphics.print("RULES", 100, 200)
    love.graphics.print("END", 100, 220)

    love.graphics.printf(text,200 , 400, 420)

end





