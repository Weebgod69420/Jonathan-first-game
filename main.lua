if love.keyboard.isDown("escape") == true then
    love.event.quit()
end



Menu = function ()
    src1 = love.audio.newSource("Fluffing duck.mp3", "stream")
    src1:stop()
    src1 = love.audio.newSource("Fluffing duck.mp3", "stream")
    scr1Loop = src1:setLooping(true)
    src1:play()

    love.load = function ()
        love.math.setRandomSeed(love.timer.getTime())
    end
    
    love.draw = function()
        love.graphics.setColor(1, 0, 0)
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

end

Menu()


Rules = function ()
    src1:stop()
    src1 = love.audio.newSource("Monkeys.mp3", "stream")
    src1:stop()
    src1 = love.audio.newSource("Monkeys.mp3", "stream")
    scr1Loop = src1:setLooping(true)
    src1:play()

    love.draw = function ()
        love.graphics.setColor(1, 0, 0)
        love.graphics.print("The objective of blackjack is to get as close to 21 as possible.", 100, 100)
        love.graphics.print("Without ever going over 21, So be careful not to take to many cards.", 100, 120)
        love.graphics.print("At the start you will get two cards and from there on you can", 100, 140)
        love.graphics.print("choose for every new card if you want to draw it or not.", 100, 160)
        love.graphics.print("back to menu?", 100, 200)
        love.graphics.print("YES", 30, 300)
        love.graphics.print("NO", 120, 300)
        love.mousepressed = function (x,y)
    
            if x > 30 and x < 50
            and y > 300 and y < 330 then
            Menu()
        end

        if x > 120 and x < 150
            and y > 300 and y < 330 then
            END()
        end
    end
    end
end


PLAY = function ()
    love.math.setRandomSeed(os.time());

    Sp = 0
    Dp = 0 

    Dp = Dp + love.math.random()* 10 + 1
    Dp = Dp + love.math.random()* 10 + 1
    Sp = Sp + love.math.random()* 10 + 1
    Sp = Sp + love.math.random()* 10 + 1

    love.draw = function ()

        love.graphics.setColor(1, 0, 0)

        love.graphics.print("The game will now start and players/dealer will both get two cards each", 100, 50)

        love.graphics.print("Want another card?", 400, 100)

        love.graphics.print("You now have " .. Sp, 50, 100)

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
            love.graphics.setColor(1, 0, 0)
    
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
    src1 = love.audio.newSource("Hitman.mp3", "stream")
    src1:stop()
    src1 = love.audio.newSource("Hitman.mp3", "stream")
    scr1Loop = src1:setLooping(true)
    src1:play()

    if Sp > 21 then 
    love.draw = function()
        love.graphics.setColor(1, 0, 0)
        love.graphics.print("Sorry you drew to high and lost", 100, 100)
        love.graphics.print("back to menu?", 100, 200)
        love.graphics.print("YES", 30, 300)
        love.graphics.print("NO", 120, 300)
        love.mousepressed = function (x,y)
    
            if x > 30 and x < 50
            and y > 300 and y < 330 then
            Menu()
        end

        if x > 120 and x < 150
            and y > 300 and y < 330 then
            END()
        end
    end
    end
end
                    
    if Dp > 21 and Sp < 21 then
    love.draw = function()
        love.graphics.setColor(1, 0, 0)
        love.graphics.print("The computer drew to high and you win", 100, 100)
        love.graphics.print("back to menu?", 100, 200)
        love.graphics.print("YES", 30, 300)
        love.graphics.print("NO", 120, 300)

        love.mousepressed = function (x,y)
    
            if x > 30 and x < 50
            and y > 300 and y < 330 then
            Menu()
        end

        if x > 120 and x < 150
            and y > 300 and y < 330 then
            END()
        end
    end
    end
end
    if Sp == 21 and Dp ~= 21 then
    love.draw = function()
        love.graphics.setColor(1, 0, 0)
        love.graphics.print("BLACKJACK!! Ultimate victory", 100, 100)
        love.graphics.print("back to menu?", 100, 200)
        love.graphics.print("YES", 30, 300)
        love.graphics.print("NO", 120, 300)
        love.mousepressed = function (x,y)
    
            if x > 30 and x < 50
            and y > 300 and y < 330 then
            Menu()
        end

        if x > 120 and x < 150
            and y > 300 and y < 330 then
            END()
        end
    end
    end
end
                
    if Dp == 21 and Dp ~= 21 then
    love.draw = function()
        love.graphics.setColor(1, 0, 0)
        love.graphics.print("You lose", 100, 100)
        love.graphics.print("back to menu?", 100, 200)
        love.graphics.print("YES", 30, 300)
        love.graphics.print("NO", 120, 300)
        love.mousepressed = function (x,y)
    
            if x > 30 and x < 50
            and y > 300 and y < 330 then
            Menu()
        end

        if x > 120 and x < 150
            and y > 300 and y < 330 then
            END()
        end
    end
    end
end
            
    if Dp == 21 and Sp == 21 then
    love.draw = function()
        love.graphics.setColor(1, 0, 0)
        love.graphics.print("Both got blackjack and you drew", 100, 100)
        love.graphics.print("back to menu?", 100, 200)
        love.graphics.print("YES", 30, 300)
        love.graphics.print("NO", 120, 300)
        love.mousepressed = function (x,y)
    
            if x > 30 and x < 50
            and y > 300 and y < 330 then
            Menu()
        end

        if x > 120 and x < 150
            and y > 300 and y < 330 then
            END()
        end
    end
    end
end
            
    if Dp == Sp then
    love.draw = function()
        love.graphics.setColor(1, 0, 0)
        love.graphics.print("Equal game, no winner", 100, 100)
        love.graphics.print("back to menu?", 100, 200)
        love.graphics.print("YES", 30, 300)
        love.graphics.print("NO", 120, 300)
        love.mousepressed = function (x,y)
    
            if x > 30 and x < 50
            and y > 300 and y < 330 then
            Menu()
        end

        if x > 120 and x < 150
            and y > 300 and y < 330 then
            END()
        end
    end
    end
end

    if Sp < 21 and Sp > Dp then
    love.draw = function()
        love.graphics.setColor(1, 0, 0)
        love.graphics.print("you win", 100, 100)
        love.graphics.print("back to menu?", 100, 200)
        love.graphics.print("YES", 30, 300)
        love.graphics.print("NO", 120, 300)
        love.mousepressed = function (x,y)
    
            if x > 30 and x < 50
            and y > 300 and y < 330 then
            Menu()
        end

        if x > 120 and x < 150
            and y > 300 and y < 330 then
            END()
        end
    end
    end
end
    if Sp < 21 and Dp > 21 then
    love.draw = function()
        love.graphics.setColor(1, 0, 0)
        love.graphics.print("you lose", 100, 100)
        love.graphics.print("back to menu?", 100, 200)
        love.graphics.print("YES", 30, 300)
        love.graphics.print("NO", 120, 300)
        love.mousepressed = function (x,y)
    
            if x > 30 and x < 50
            and y > 300 and y < 330 then
            Menu()
        end

        if x > 120 and x < 150
            and y > 300 and y < 330 then
            END()
        end
    end
    end
end

end



END = function ()

    love.event.quit()

end
