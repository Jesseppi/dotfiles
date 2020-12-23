hs.grid.setGrid'3x3'
hs.grid.setMargins("0,0")
hs.window.animationDuration = 0

function getWin()
  return hs.window.focusedWindow()
end

function getFrame(window)
  return win:frame()
end

function getScreen(window)
  return win:screen()
end

function snapTo(direction)
  local win = getWith()
  local frame = getFrame(win)
  local screen = getScreen(win)
  local max = screen:frame()

  frame.x = max.x
  frame.y = max.y
  frame.w = max.w
  frame.h = max.h

  if direction ~= "up"
    frame.w = max.w / 2
  elseif direction == "right"
    frame.x = max.x + (max.w / 2)
  end

  win:setFrame(frame)
end


--- arrows: move window
hs.hotkey.bind(window, "left", snapTo("left"))
hs.hotkey.bind(window, "right", snapTo("right"))
hs.hotkey.bind(window, "up", snapTo("up"))

