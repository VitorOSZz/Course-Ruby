class ToDolist

    def create_a_task(title, due_date, priority,path_file)

      tasks = File.open(path_file,'a+')
      id = 0
      stop = false

      while stop == false
        id +=1
        if File.open(path_file,'r+').read == ""
          stop = true
          tasks.write('-'*12)
        else
          File.foreach(path_file, 'r+') do |line|
            if line.include?("ID      : #{id}") == false
              stop = true
              tasks.write("\n" + '-'*12)
            end
          end
        end
      end

      tasks.write(" \n ID      : #{id}")
      tasks.write(" \n Title   : #{title}")
      tasks.write(" \n Due Date: #{due_date}\n")
      tasks.write(" Priority: #{priority}")
      tasks.close
    end

  def check
    tasks = File.open('components/tasks.txt','r')
    puts tasks.read
    tasks.close
  end

  def see_on_list(number_you_want)
    @Number_you_want = number_you_want
    x = 0
    File.foreach('components/tasks.txt') {|line|
    x += 1
    if x == @Number_you_want
      this_id = line
      puts line
    end}
  end

  def take_on_list(number_you_want, path_file)
    @number_you_want = number_you_want
    x = 0
    lines = []

    File.open(path_file, 'r') do |file|
      file.each_line do |line|
        x += 1
        lines << line unless x == @number_you_want
      end
    end

    File.open(path_file, 'w') do |file|
      file.write lines.join("")
    end
  end

  def take_multiples_lines(start_line,path_file)
    x=0
    while x < 5
      take_on_list(start_line,path_file)
      x += 1
    end
  end

  def delete_a_item(id_to_delete,path_file)
    start_line = (id_to_delete*4)+(id_to_delete-4)
    take_multiples_lines(start_line,path_file)

    # Re Organize IDS
    system('clear')
    File.foreach(path_file, 'r+') do |line|
      x=0
      txt = File.open(path_file,'r+').read
      while line.include?("ID      : #{id_to_delete+=1}")
        x+=1
        txt = txt.gsub(" ID      : #{id_to_delete}", " ID      : #{id_to_delete-1}")
        tasks = File.open(path_file,'w')
        tasks.write("#{txt}")
        tasks.close
      end
    end
  end
end
