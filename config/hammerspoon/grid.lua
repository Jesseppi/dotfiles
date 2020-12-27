windowMash = {"⌘", "⌥"}

function getWin()
  return hs.window.focusedWindow()
end

function getFrame(win)
  return win:frame()
end

function getScreen(win)
  return win:screen()
end

--- arrows: move window
hs.hotkey.bind(windowMash, "left", 
  function()
  local win = getWin()
  local frame = getFrame(win)
  local screen = getScreen(win)
  local max = screen:frame()

  frame.x = max.x
  frame.y = max.y
  frame.w = max.w
  frame.h = max.h
  frame.w = max.w / 2

  win:setFrame(frame)
end)
hs.hotkey.bind(windowMash, "right", 
  function()
  local win = getWin()
  local frame = getFrame(win)
  local screen = getScreen(win)
  local max = screen:frame()

  frame.x = max.x + (max.w / 2)
  frame.y = max.y
  frame.w = max.w
  frame.h = max.h
  frame.w = max.w / 2

  win:setFrame(frame)
end)
hs.hotkey.bind(windowMash, "up", 
  function()
  local win = getWin()
  local frame = getFrame(win)
  local screen = getScreen(win)
  local max = screen:frame()

  frame.x = max.x
  frame.y = max.y
  frame.w = max.w
  frame.h = max.h
  frame.w = max.w

  win:setFrame(frame)
end)

