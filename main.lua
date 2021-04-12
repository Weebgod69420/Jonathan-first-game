if love.keyboard.isDown("escape") == true then
    love.event.quit()
end

-- låt

Song = function ()
    src1 = love.audio.newSource("sound files/Fluffing duck.mp3", "stream")
    scr1Loop = src1:setLooping(true)
    src1:play()
end

Song ()

-- meny funktionen

Menu = function () 

-- gör pseudo random tal mer random

    love.load = function ()
        love.math.setRandomSeed(love.timer.getTime())
    end

-- hover function

    love.mousemoved = function (x, y)

        if x > 100 and x < 150 and
           y > 180 and y < 200 then
            PlayHovering = true;
        else
            PlayHovering = false;
        end

        if x > 100 and x < 130 and
           y > 200 and y < 225 then
            RulesHovering = true;
        else
            RulesHovering = false;
        end

        if x > 100 and x < 130 and
           y > 225 and y < 250 then
            EndHovering = true;
        else
            EndHovering = false;
        end
    end
    
-- meny valen

    love.draw = function()
        love.graphics.setColor(1, 0, 0)
        love.graphics.print("menu:", 100, 150)
        love.graphics.print("PLAY", 100, 180)
        love.graphics.print("RULES", 100, 200)
        love.graphics.print("END", 100, 220) 
        love.graphics.print("WELCOME TO BLACKJACK!!", 100, 100)

        if PlayHovering == true then
            love.graphics.print("WELCOME TO BLACKJACK!!", 100, 100) 
            love.graphics.print("menu:", 100, 150)
            love.graphics.setColor(0, 1, 0)  
            love.graphics.print("PLAY", 100, 180)
            love.graphics.print("RULES", 100, 200)
            love.graphics.print("END", 100, 220)
                 
        end
    
        if RulesHovering == true then
            love.graphics.setColor(1, 0, 0)
            love.graphics.print("WELCOME TO BLACKJACK!!", 100, 100) 
            love.graphics.print("menu:", 100, 150)
            love.graphics.print("PLAY", 100, 180)
            love.graphics.setColor(0, 1, 0)
            love.graphics.print("RULES", 100, 200)
            love.graphics.print("END", 100, 220)
        end

        if EndHovering == true then   
            love.graphics.setColor(1, 0, 0)
            love.graphics.print("WELCOME TO BLACKJACK!!", 100, 100) 
            love.graphics.print("menu:", 100, 150)
            love.graphics.print("PLAY", 100, 180)
            love.graphics.print("RULES", 100, 200)
            love.graphics.setColor(0, 1, 0)
            love.graphics.print("END", 100, 220)      
                              
        end
     
end

-- vart klickar spelaren
    
    love.mousepressed = function (x, y)

        src1 = love.audio.newSource("sound files/jump.mp3", "stream")
        src1:play()
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

-- Regler

    love.draw = function ()
        love.graphics.setColor(1, 0, 0)
        love.graphics.print("The objective of blackjack is to get as close to 21 as possible.", 100, 100)
        love.graphics.print("Without ever going over 21, So be careful not to take to many cards.", 100, 120)
        love.graphics.print("At the start you will get two cards and from there on you can", 100, 140)
        love.graphics.print("choose for every new card if you want to draw it or not.", 100, 160)
        love.graphics.print("back to menu?", 100, 200)
        love.graphics.print("YES", 30, 300)
        love.graphics.print("NO", 120, 300)

-- Tillbaks till menyn

        love.mousepressed = function (x,y)
    
            if x > 30 and x < 50
            and y > 300 and y < 330 then
            Menu()
        end

        if x > 120 and x < 150
            and y > 300 and y < 330 then
            END()
        end
        src1 = love.audio.newSource("sound files/jump.mp3", "stream")
        src1:play()
    end
    end
end

PLAY = function ()

-- Spelar poäng/dator poäng

    love.math.setRandomSeed(os.time());

    Sp = 0
    Dp = 0 

    Dp = Dp + love.math.random(1, 11)
    Dp = Dp + love.math.random(1, 11)
    Sp = Sp + love.math.random(1, 11)
    Sp = Sp + love.math.random(1, 11)

    love.draw = function ()

        love.graphics.setColor(1, 0, 0)

        love.graphics.print("The game will now start and players/dealer will both get two cards each", 100, 50)

        love.graphics.print("Want another card?", 400, 100)

        love.graphics.print("You now have " .. Sp, 50, 100)

        love.graphics.print("YES", 30, 300)

        love.graphics.print("NO", 120, 300)

    end

-- ett till kort/inga fler kort

        love.mousepressed = function (x,y)

            if x > 30 and x < 50
            and y > 300 and y < 330 then
            Anothercard()
        end

        if x > 120 and x < 150
            and y > 300 and y < 330 then
            Endgame()
        end
        src1 = love.audio.newSource("sound files/jump.mp3", "stream")
        src1:play()
    end
end

-- ett till krot funktionen

    Anothercard = function ()
        
        love.math.setRandomSeed(os.time());

        Dp = Dp + love.math.random(1, 11)
        Sp = Sp + love.math.random(1, 11)

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
            src1 = love.audio.newSource("sound files/jump.mp3", "stream")
            src1:play()
        end

    end

-- inga fler kort funktionen

    Endgame = function () 

    if Sp > 21 then 
    love.draw = function()
        love.graphics.setColor(1, 0, 0)
        love.graphics.print("Sorry you drew to high and lost, dealer had " .. Dp, 100, 100)
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
        src1 = love.audio.newSource("sound files/jump.mp3", "stream")
        src1:play()
    end
    end
end
                    
    if Dp > 21 and Sp < 21 then
    love.draw = function()
        love.graphics.setColor(1, 0, 0)
        love.graphics.print("The computer drew to high and you win, dealer had " .. Dp, 100, 100)
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
        src1 = love.audio.newSource("sound files/jump.mp3", "stream")
        src1:play()    
    end
    end
end
    if Sp == 21 and Dp ~= 21 then
    love.draw = function()
        love.graphics.setColor(1, 0, 0)
        love.graphics.print("BLACKJACK!! Ultimate victory, dealer had " .. Dp, 100, 100)
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
        src1 = love.audio.newSource("sound files/jump.mp3", "stream")
        src1:play()
    end
    end
end
                
    if Dp == 21 and Dp ~= 21 then
    love.draw = function()
        love.graphics.setColor(1, 0, 0)
        love.graphics.print("You lose, dealer had " .. Dp, 100, 100)
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
        src1 = love.audio.newSource("sound files/jump.mp3", "stream")
        src1:play()
    end
    end
end
            
    if Dp == 21 and Sp == 21 then
    love.draw = function()
        love.graphics.setColor(1, 0, 0)
        love.graphics.print("Both got blackjack and you drew, dealer had " .. Dp, 100, 100)
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
        src1 = love.audio.newSource("sound files/jump.mp3", "stream")
        src1:play()
    end
    end
end
            
    if Dp == Sp then
    love.draw = function()
        love.graphics.setColor(1, 0, 0)
        love.graphics.print("Equal game, no winner, both had" .. Dp, 100, 100)
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
        src1 = love.audio.newSource("sound files/jump.mp3", "stream")
        src1:play()
    end
    end
end

    if Sp < 21 and Sp > Dp then
    love.draw = function()
        love.graphics.setColor(1, 0, 0)
        love.graphics.print("you win, dealer had " .. Dp, 100, 100)
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
        src1 = love.audio.newSource("sound files/jump.mp3", "stream")
        src1:play()
    end
    end
end

    if Sp < 21 and Dp > Sp then
        love.draw = function()
            love.graphics.setColor(1, 0, 0)
            love.graphics.print("you lose, dealer had " .. Dp, 100, 100)
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
            src1 = love.audio.newSource("sound files/jump.mp3", "stream")
            src1:play()
        end
        end
    end
end

END = function ()

    love.event.quit()

end
