Shoes.app width: 1024, height: 600 do
  title "Make A Shape"
  COLORS = Shoes::COLORS
  i = 105
  button 'New' do
    i += 5
    box = rand(2) == 0 ? rect(i, i, 200) : oval(i, i, 200)
    box.style fill: send(COLORS.keys[rand(COLORS.keys.size)])
    @flag = false
    box.click{@flag = true; @box = box}
    box.release{@flag = false}
  end
  motion{|left, top| @box.move(left-10, top-10) if @flag}
end
