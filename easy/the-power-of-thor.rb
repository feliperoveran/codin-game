STDOUT.sync = true # DO NOT REMOVE
# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.
# ---
# Hint: You can use the debug stream to print initialTX and initialTY, if Thor seems not follow your orders.

# light_x: the X position of the light of power
# light_y: the Y position of the light of power
# initial_tx: Thor's starting X position
# initial_ty: Thor's starting Y position
@light_x, @light_y, @initial_tx, @initial_ty = gets.split(" ").collect {|x| x.to_i}

# game loop
loop do
    remaining_turns = gets.to_i # The remaining amount of turns Thor can move. Do not remove this line.
    
    movement = ''
    
    if @initial_ty < @light_y
        movement += 'S'
        @initial_ty += 1
    end
    
    if @initial_tx < @light_x
        movement += 'E'
        @initial_tx += 1
    end
    
    if @initial_ty > @light_y
        movement += 'N'
        @initial_ty -= 1
    end
    
    if @initial_tx > @light_x
        movement += 'W'
        @initial_tx -= 1
    end
    # A single line providing the move to be made: N NE E SE S SW W or NW
    puts movement
end