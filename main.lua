love.load = function ()

    text = "Write here..."

-- startmenyns alternativ

    if text == "Write here..." .. "1"  then
        Game()
    end

    if text == "Write here..." .. "2" then
        Rules()
    end

    if text == "Write here..." .. "3"  then
        End()
    end
end

love.textinput = function (t)
    text = text..t
end

love.keypressed = function (key)
    if key == "backspace" then
        text = text:sub(1, -2)
    end
end

-- startskärm

love.draw = function()

    love.graphics.print("WELCOME TO BLACKJACK!!", 100, 100) 
    love.graphics.print("menu:", 100, 150)
    love.graphics.print("PLAY", 100, 180)
    love.graphics.print("RULES", 100, 200)
    love.graphics.print("END", 100, 220)

    love.graphics.printf(text, 200 , 400, 420)

end


function Game()

    love.draw = function ()

        love.graphics.print("The game will now start and players/dealer will both get two cards each", 100, 50)
   
    end

-- spelar poäng/dator poäng

    Sp = 0
    Dp = 0 

    Dp = Dp + math.floor(math.random() * 10) + 1;
    Dp = Dp + math.floor(math.random() * 10) + 1;
    Sp = Sp + math.floor(math.random() * 10) + 1;
    Sp = Sp + math.floor(math.random() * 10) + 1;

    

    love.draw = function ()

        love.graphics.print("Want another card?")
        love.graphics.printf(text, 200 , 400, 420)
  
    end

    love.textinput = function (t)
        text = text..t
    end

    love.load = function ()

        text = "Write here..."

        if text ==  "Write here..." .. "yes" then
            Anothercard()
        end

        if text == "Write here..." .. "no" then
            Endresult()
        end

    end

    function Endresult()

        if Sp < 21 then 
            love.draw = function()
                love.graphics.print("Sorry you drwe to high and lost")
        end
        
        if Dp < 21 and Sp >= 21 then
            love.draw = function()
                love.graphics.print("The computer drew to high and you win")
        end
    end

        if Sp == 21 and Dp ~= 21 then
            love.draw = function()
                love.graphics.print("BLACKJACK!! Ultimate victory")
        end
    end

        if Dp == 21 and Dp ~= 21 then
            love.draw = function()
                love.graphics.print("You lose")
        end
    end

        if Dp == 21 and Sp == 21 then
            love.draw = function()
                love.graphics.print("Both got blackjack and you drew")
        end
    end

        if Dp == Sp then
            love.draw = function()
                love.graphics.print("Equal game")
        end
    end
    end

function Anothercard ()

    Dp = Dp + math.floor(math.random() * 10) + 1;
    Sp = Sp + math.floor(math.random() * 10) + 1;

    love.draw = function ()
        love.graphics.print("Want another card?")
        love.graphics.printf(text, 200 , 400, 420)
    end

    love.textinput = function (t)
        text = text..t
    end

    love.load = function ()

        text = "Write here..."

        if text ==  "Write here..." .. "yes" then
            Anothercard()
        end

        if text == "Write here..." .. "no" then
            Endresult()
        end

    end

    end

    end

    function Rules()

        love.draw = function()

            love.graphics.print("WELCOME TO BLACKJACK!!", 100, 100) 
        
            love.graphics.printf(text, 200 , 400, 420)
        
        end
        

    end

    function End() 

    end

    end

