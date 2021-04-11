


love.load = function ()
    love.math.setRandomSeed(love.timer.getTime())
end

love.draw = function()

    love.graphics.print("WELCOME TO BLACKJACK!!", 100, 100) 
    love.graphics.print("menu:", 100, 150)
    love.graphics.print("PLAY", 100, 180)
    love.graphics.print("RULES", 100, 200)
    love.graphics.print("END", 100, 220)

end

love.mousepressed = function (x, y)

    if x > 100 and x < 150
    and y > 200 and y < 230 then
        Rules()
    end

    if x > 100 and x < 150
    and y > 180 and y < 200 then
        PLAY()
    end

    if x > 100 and x < 150
    and y > 220 and y < 250 then
        END()
    end
end


Rules = function ()

    love.draw = function ()
        love.graphics.print("it worked... sorta, hang in there pal", 100, 100)
    end   



end


PLAY = function ()

    love.math.random()

    Sp = 0
    Dp = 0 

    Dp = Dp + love.math.random()* 10 + 1
    Dp = Dp + love.math.random()* 10 + 1
    Sp = Sp + love.math.random()* 10 + 1
    Sp = Sp + love.math.random()* 10 + 1

    print(math.random())

    love.draw = function ()

        love.graphics.print("The game will now start and players/dealer will both get two cards each", 100, 50)

        love.graphics.print("Want another card?", 50, 100)

        love.graphics.print("You now have " .. Sp, 200, 100)

        love.graphics.print("YES", 30, 300)

        love.graphics.print("NO", 120, 300)

    end

        love.mousepressed = function (x,y)

            if x > 30 and x < 50
            and y > 300 and y < 330 then
            Anothercard()
        end

        if x > 120 and x < 150
            and y > 300 and y < 330 then
            Endgame()
        end
    end
end

    Anothercard = function ()
        
        love.math.setRandomSeed(os.time());

        Dp = Dp + love.math.random()* 10 + 1
        Sp = Sp + love.math.random()* 10 + 1

        love.draw = function ()
    
            love.graphics.print("Want another card?", 100, 50)
    
            love.graphics.print("You now have " .. Sp, 200, 100)
    
            love.graphics.print("YES", 30, 300)
    
            love.graphics.print("NO", 120, 300)
    
        end
    
            love.mousepressed = function (x,y)
    
                if x > 30 and x < 50
                and y > 300 and y < 330 then
                Anothercard()
            end
    
            if x > 120 and x < 150
                and y > 300 and y < 330 then
                Endgame()
            end
        end

    end

    Endgame = function ()
    if Sp > 21 then 
    love.draw = function()
    love.graphics.print("Sorry you drew to high and lost")
    end
end
                    
    if Dp > 21 and Sp < 21 then
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
    love.graphics.print("Equal game, no winner")
    end
end

end

END = function ()

    love.event.quit()

end
