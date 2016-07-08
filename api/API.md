# A kind of documentation for [Juno](https://github.com/rxi/juno)

## Objects

- ### Font
  - ##### Font:__gc()
  - ##### juno.Font.fromFile(filename)
  - ##### juno.Font.fromString(data,size)
  - ##### juno.Font.fromEmbedded(size)
  - ##### Font:render(string)
  - ##### Font:getWidth(string)
  - #### Font:getHeight()

- ### Buffer
  - #### Buffer:__gc()
  - #### juno.Buffer.fromFile(filename)
  - #### juno.Buffer.fromString(string)
  - #### juno.Buffer.fromBlank(width, height)
  - #### Buffer:clone()
  - #### Buffer:getWidth()
  - #### Buffer:getHeight()
  - #### Buffer:setAlpha(alpha)
  - #### Buffer:setBlend(mode)
  - #### Buffer:setColor(unpack{r,g,b,a})
  - #### Buffer:setClip(x,y,w,h)
  - #### Buffer:reset()
  - #### Buffer:clear(unpack{r,g,b,a})
  - #### Buffer:getPixel(x,y)
  - #### Buffer:setPixel(x,y,unpack{r,g,b,a})
  - #### Buffer:copyPixels(src,x,y,scale_x,scale_y)
  - #### Buffer:noise(seed,low,high,grey)
  - #### Buffer:floodFill(x,y,unpack{r,g,b,a})
  - #### Buffer:drawPixel(x,y,unpack{r,g,b,a})
  - #### Buffer:drawLine(x1,y1,x2,y2,unpack{r,g,b,a})
  - #### Buffer:drawRect(x,y,w,h,unpack{r,g,b,a})
  - #### Buffer:drawBox(x,y,w,h,unpack{r,g,b,a})
  - #### Buffer:drawCircle(x,y,r,unpack{r,g,b,a})
  - #### Buffer:drawBuffer(src,x,y,{x = rect_x, y = rect_y, w = rect_w, h = rect_h},rot,scale_x,scale_y,offset_x,offset_y)
  - #### Buffer:draw(src,x,y,{x = rect_x, y = rect_y, w = rect_w, h = rect_h},rot,scale_x,scale_y,offset_x,offset_y)

- ### Source
  - #### Source:__gc()
  - #### juno.Source.fromData(filename)
  - #### juno.Source.fromBlank()
  - #### Source:getLength()
  - #### Source:getState()
  - #### Source:setCallback(function)
  - #### Source:setDestination(dest)
  - #### Source:setGain(gain)
  - #### Source:setPan(pan)
  - #### Source:setRate(rate)
  - #### Source:setLoop(looping)
  - #### Source:play(reset)
  - #### Source:pause()
  - #### Source:stop()

- ### Gif
  - #### Gif:__gc()
  - #### juno.Gif.new(file,w,h,colors)
  - #### Gif:update(buffer,delay)
  - #### Gif:close()

## Modules

- ### system
  - #### juno.system.poll()
  - #### juno.system.info(info)

- ### fs
  - #### juno.fs.mount(path)
  - #### juno.fs.unmount(path)
  - #### juno.fs.setWritePath(path)
  - #### juno.fs.exists(filename)
  - #### juno.fs.getSize(filename)
  - #### juno.fs.getModified(filename)
  - #### juno.fs.read(filename)
  - #### juno.fs.isDir(dirname)
  - #### juno.fs.listDir(path)
  - #### juno.fs.write(filename,data)
  - #### juno.fs.append(filename,data)
  - #### juno.fs.delete(filename)
  - #### juno.fs.makeDirs(path)

- ### time
  - #### juno.time.getNow()
  - #### juno.time.getTime()
  - #### juno.time.sleep()

- ### graphics
  - #### juno.graphics.init(width, height, title, fullscreen, resizable)
  - #### juno.graphics.setFullscreen(fullscreen)
  - #### juno.graphics.setMaxFps(maxfps)

- ### audio
  - #### juno.audio.init(rate, buffersize)

- ### mouse
  - #### juno.mouse.setVisible(visible)
  - #### juno.mouse.setPosition(x,y)

- ### bufferfx
    - #### juno.bufferfx.desaturate(buffer,amount)
    - #### juno.bufferfx.palette(buffer,{"r","g","b","a"})
    - #### juno.bufferfx.dissolve(buffer,amount,?s?)
    - #### juno.bufferfx.mask(buffer,mask,channel)
    - #### juno.bufferfx.wave(buffer,src,amountx, amounty, scalex,scaley,offsetx,offsety)
    - #### juno.bufferfx.displace(buffer,src,map,channelx,channely,scalex,scaley)
    - #### juno.bufferfx.blur(buffer,src,radiusx,radiusy)

- ### keyboard
  - #### juno.keyboard.reset()
  - #### juno.keyboard.isDown(k)
  - #### juno.keyboard.wasPressed(k)
