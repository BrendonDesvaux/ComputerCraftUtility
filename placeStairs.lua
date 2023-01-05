function Main()
    while true do
        IsLowOnFuel()
        turtle.digDown()
        if turtle.getItemCount() == 0 then
            break
        end
        turtle.placeDown()
        turtle.back()
        turtle.down()
    end
end

function ThrowJunk()
    for i = 1, 16, 1 do
        turtle.select(i)
        if turtle.getItemCount() > 0 then
            X = turtle.getItemDetail().name
            if X == "minecraft:cobblestone" or X == "minecraft:stone" or X == "minecraft:gravel" or X == "minecraft:dirt" or X == "minecraft:flint" then
                turtle.drop()
            end
        end
    end
    turtle.select(1)
end

function IsLowOnFuel()
    if turtle.getFuelLevel() < 64 then
      for i = 1, 16, 1 do
            turtle.select(i)
            turtle.refuel(64)
        end
    end
    turtle.select(1)
end

Main()