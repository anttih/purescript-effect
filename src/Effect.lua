
local function pureE(a)
  return function ()
    return a
  end
end

local function bindE(a)
  return function (f)
    return function ()
      return f(a())()
    end
  end
end

local function untilE(f)
  return function ()
    while not f() do end
    return {}
  end
end

local function whileE(f)
  return function (a)
    return function ()
      while f() do
        a()
      end
      return {}
    end
  end
end

local function forE(lo)
  return function (hi)
    return function (f)
      return function ()
        local i = lo
        local len = #hi
        while i < len do
          f(i)()
          i = i + 1
        end
      end
    end
  end
end

local function foreachE(as)
  return function (f)
    return function ()
      for i = 1, #as do
        f(as[i])()
      end
    end
  end
end

return {
  pureE = pureE,
  bindE = bindE,
  untilE = untilE,
  whileE = whileE,
  forE = forEk,
  foreachE = foreachE
}
