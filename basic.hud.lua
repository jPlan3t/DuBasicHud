-- ternary / place in Library
function ternary(cond, T, F)
    if cond then
        return T
    else
        return F
    end
end

-- hud / Place in System Update filter
local lockBrakeHud = ternary(lockBrake, '<div class="on"></div>',
                             '<div class="off"></div>')

local css = [[
<style>
.zen {
display: flex;
flex-direction: column;
}

.controls-hud {
display: flex;
flex-direction: column;
justify-content: space-around;
background-color: #34495E50;
border-color: #333333;
border-radius: 12px;
width: 20%;
padding: 1% 1.5%;
overflow: none;
}

p {
font-size: 20px;
font-weight: 300;
color: white;
}

.control-container {
display: flex;
justify-content: space-between;
padding: 1%;
}

.on {
background-color: #039bef;
margin-left: 10px;
border-radius: 50%;
width: 20px;
height: 20px;
border: 2px solid black;
}

.off {
background-color: red;
margin-left: 10px;
border-radius: 50%;
width: 20px;
height: 20px;
border: 2px solid black;
}
</style>]]

local html = [[
<div class="zen">
  <div class="controls-hud">
    <div class="control-container">
      <p>Lock Brake (alt4)</p>
      ]] .. lockBrakeHud .. [[
    </div>
</div>


</div>]]

system.setScreen(css .. html)
system.showScreen(1)

