
local function unsafePerformEffect(f)
  return f()
end

return {
  unsafePerformEffect = unsafePerformEffect
}
