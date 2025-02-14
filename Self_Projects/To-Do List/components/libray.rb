module To_Do_List

    def self.create_a_task(title, due_date, priority,path_file)

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

  def self.check(path_file)
    return File.read(path_file)
  end

  def self.see_on_list(line_number)
    x = 0
    File.foreach('components/tasks.txt') {|line|
    x += 1
    if x == line_number
      this_id = line
      return line
    end}
  end

  def self.delete_a_item(id_to_delete,path_file)
    start_line = (id_to_delete*4)+(id_to_delete-5)
    
    txt = IO.readlines(path_file)
    for x in 1..5 do 
      txt.delete_at(start_line)
    end
    File.open(path_file, 'w+') do |tasks|
      x = 0
      txt.each { |line|
      x += 1
      if txt.length == x
        line = line.chomp
      end
      tasks.write(line)
    }
    end
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

  def self.edit_a_item(path_file, line_of_ID, choose, new_txt)
    #system 'clear'

    txt = IO.readlines(path_file)

    if line_of_ID+choose == txt.length # if is the last line => put chomp to dont write \n
      new_txt = new_txt.chomp
    end
    case choose 
    when 1
      txt[line_of_ID+choose-1] = " Title   : #{new_txt}"
    when 2
      txt[line_of_ID+choose-1] = " Due Date: #{new_txt}"
    when 3
      txt[line_of_ID+choose-1] = " Priority: #{new_txt}"
    end
    tasks = File.open(path_file, 'w+')
    txt.each { |line|
      tasks.write(line)
    }
    tasks.close
  end
end

def separte_line
  puts ('-'*12).colorize(:yellow)
end