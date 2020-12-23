local M = {}

function M.mkEffectFn1(fn)
  return function(x)
    return fn(x)()
  end
end

function M.mkEffectFn2(fn)
  return function(a, b)
    return fn(a)(b)()
  end
end

function M.mkEffectFn3(fn)
  return function(a, b, c)
    return fn(a)(b)(c)()
  end
end

function M.mkEffectFn4(fn)
  return function(a, b, c, d)
    return fn(a)(b)(c)(d)()
  end
end

function M.mkEffectFn5(fn)
  return function(a, b, c, d, e)
    return fn(a)(b)(c)(d)(e)()
  end
end

function M.mkEffectFn6(fn)
  return function(a, b, c, d, e, f)
    return fn(a)(b)(c)(d)(e)(f)()
  end
end

function M.mkEffectFn7(fn)
  return function(a, b, c, d, e, f, g)
    return fn(a)(b)(c)(d)(e)(f)(g)()
  end
end

function M.mkEffectFn8(fn)
  return function(a, b, c, d, e, f, g, h)
    return fn(a)(b)(c)(d)(e)(f)(g)(h)()
  end
end

function M.mkEffectFn9(fn)
  return function(a, b, c, d, e, f, g, h, i)
    return fn(a)(b)(c)(d)(e)(f)(g)(h)(i)()
  end
end

function M.mkEffectFn10(fn)
  return function(a, b, c, d, e, f, g, h, i, j)
    return fn(a)(b)(c)(d)(e)(f)(g)(h)(i)(j)()
  end
end

function M.runEffectFn1(fn)
  return function(a)
    return function()
      return fn(a)
    end
  end
end

function M.runEffectFn2(fn)
  return function(a)
    return function(b)
      return function()
        return fn(a, b)
      end
    end
  end
end

function M.runEffectFn3(fn)
  return function(a)
    return function(b)
      return function(c)
        return function()
          return fn(a, b, c)
        end
      end
    end
  end
end

function M.runEffectFn4(fn)
  return function(a)
    return function(b)
      return function(c)
        return function(d)
          return function()
            return fn(a, b, c, d)
          end
        end
      end
    end
  end
end

function M.runEffectFn5(fn)
  return function(a)
    return function(b)
      return function(c)
        return function(d)
          return function(e)
            return function()
              return fn(a, b, c, d, e)
            end
          end
        end
      end
    end
  end
end

function M.runEffectFn6(fn)
  return function(a)
    return function(b)
      return function(c)
        return function(d)
          return function(e)
            return function(f)
              return function()
                return fn(a, b, c, d, e, f)
              end
            end
          end
        end
      end
    end
  end
end

function M.runEffectFn7(fn)
  return function(a)
    return function(b)
      return function(c)
        return function(d)
          return function(e)
            return function(f)
              return function(g)
                return function()
                  return fn(a, b, c, d, e, f, g)
                end
              end
            end
          end
        end
      end
    end
  end
end

function M.runEffectFn8(fn)
  return function(a)
    return function(b)
      return function(c)
        return function(d)
          return function(e)
            return function(f)
              return function(g)
                return function(h)
                  return function()
                    return fn(a, b, c, d, e, f, g, h)
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

function M.runEffectFn9(fn)
  return function(a)
    return function(b)
      return function(c)
        return function(d)
          return function(e)
            return function(f)
              return function(g)
                return function(h)
                  return function(i)
                    return function()
                      return fn(a, b, c, d, e, f, g, h, i)
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

function M.runEffectFn10(fn)
  return function(a)
    return function(b)
      return function(c)
        return function(d)
          return function(e)
            return function(f)
              return function(g)
                return function(h)
                  return function(i)
                    return function(j)
                      return function()
                        return fn(a, b, c, d, e, f, g, h, i, j)
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

return M
