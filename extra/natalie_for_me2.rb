=begin
52. Bouncing Balls
(https://www.codewars.com/kata/5544c7a5cb454edb3c000047)
6 kyu
A child is playing with a ball on the nth floor of a tall building. The height of this floor, h, is known.

He drops the ball out of the window. The ball bounces (for example), to two-thirds of its height (a bounce of 0.66).

His mother looks out of a window 1.5 meters from the ground.

How many times will the mother see the ball pass in front of her window (including when it's falling and bouncing?

Three conditions must be met for a valid experiment:
Float parameter "h" in meters must be greater than 0
Float parameter "bounce" must be greater than 0 and less than 1
Float parameter "window" must be less than h.
If all three conditions above are fulfilled, return a positive integer, otherwise return -1.

Note:
The ball can only be seen if the height of the rebounding ball is strictly greater than the window parameter.

Example:
- h = 3, bounce = 0.66, window = 1.5, result is 3

- h = 3, bounce = 1, window = 1.5, result is -1 
(Condition 2) not fulfilled).

h = ball start height
bounce = how high the ball goes back up
window = where is mother is looking out

1 - drop (3 > 1.5)
2 - bounce past her window (1.98 > 1.5)
3 - fall back to ground (1.98 > 1.5)
3 max because 2nd bounce is 1.3068 < 1.5

h = 3
bounce = 1
window = 1.5
return -1

Problem:
- input: height, bounce, mom window
- return: integer (number of times mom sees the bounce)
  - down is 1, bounce is 2
- explicit
  - "height"  must be greater than 0
  - "bounce" must be greater than 0 and less than 1
  - "window" must be less than height.
  - ball only seen (only counts) IF height of ball on rebound is > (strictly) window
  
Algorithm:
- Check if (and return -1 if not)
  - height > 0
  - bounce > 0 && bounce < 1
  - window < height
- initialize count to 0
- loop until height <= window
  - if count == 0 then count += 1
    - otherwise count += 2
  - height *= bounce
- return count


=end

def bouncingBall(height, bounce, window)
  return -1 if height <= 0 || bounce <= 0 || bounce >= 1 || window >= height
  count = 1
  loop do
    height *= bounce
    break if height <= window
    count += 2
  end
  return count
end

# def bouncingBall(h, bounce, window)
#   return -1 if (h < 0) || (window >= h) || !(bounce > 0 && bounce < 1)

#   fall_counter = 1
#   loop do
#     h = h * bounce
#     break if h <= window
#     fall_counter += 2
#   end
  
#   fall_counter
# end

## Recursive solution from Codewars
def bouncingBall(h, bounce, window)
  bounce < 0 || bounce >= 1 || h <= window || window < 0 ? -1 : bouncingBall(h * bounce, bounce, window) + 2
end

## Recursive solution from Codewars #2
def bouncingBall(h, bounce, window)
    if h <= 0 || bounce < 0 || bounce >= 1 || window >= h
      -1  
    elsif h * bounce <= window
      1
    else      
      return 2 + bouncingBall(h * bounce, bounce, window)
    end
end


# test cases
p bouncingBall(3, 0.66, 1.5) == 3
p bouncingBall(30, 0.66, 1.5) == 15
p bouncingBall(30, 0.75, 1.5) == 21
p bouncingBall(30, 0.4, 10) == 3
p bouncingBall(40, 1, 10) == -1
p bouncingBall(-5, 0.66, 1.5) == -1
p bouncingBall(1, 0.66, 0.66) == 1
p bouncingBall(1, 0.66, 1) == -1