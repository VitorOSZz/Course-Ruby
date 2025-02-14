require 'colorize'
stop = false
path_file = 'components/tasks.txt'
while stop == false

  separte_line
  puts 'What do you want to do?'
  puts '[1] Check my To-Do List'
  puts '[2] Add a item on To-Do List'
  puts '[3] Edit a item on To-Do List'
  puts '[4] Delete a item To-Do List'
  puts '[5] End'

  optionAnswer = gets.to_i

  case optionAnswer
  when 1 # Check my To-Do List
    system('clear')
    puts To_Do_List.check(path_file)
    sleep(1)
  when 2 # Add a item for To-Do List
    title = ''
    due_date = ''
    priority = ''
    while title == ''
      puts 'Whats Title?'
      title = gets.chomp
      if title != ''
        break
      end
      puts 'Answer a valid Title!'.colorize(:red)
    end
    
    while due_date == ''
      puts 'Whats Due Date?'
      due_date = gets.chomp
      if due_date != ''
        break
      end
      puts 'Answer a valid Date'.colorize(:red)
    end

    while priority == ''
      puts 'Whats Priority?'
      priority = gets.chomp
      if priority != ''
        break
      end
      puts 'Answer a valid Priority'.colorize(:red)
    end

    To_Do_List.create_a_task(title,due_date,priority,path_file)
  when 3 # Edit a item on To-Do List
    system 'clear'
    puts To_Do_List.check(path_file)
    separte_line
    line_of_ID = 0
    while line_of_ID <= 0
      puts 'what ID you want edit?'
      id_to_edit = gets.to_i
      x = 0
      IO.foreach(path_file) { |line|
        x +=1
        if line.include?("ID      : #{id_to_edit}")
          line_of_ID = x
        end
      }
      if line_of_ID <= 0 
        puts To_Do_List.check(path_file)
        puts 'Say a Correct ID!'.colorize(:red)
      end
    end

    
    choose = 0
    
    system 'clear'
    while choose <= 0 or choose > 3
      5.times do |x|
        puts To_Do_List.see_on_list((line_of_ID-2)+(x+1))
      end
      separte_line
      puts "what you want to edit?\n[1] Title\n[2] Due Date\n[3] Priority"
      choose = gets.to_i 
      if choose <= 0 or choose > 3
        system 'clear'
        puts "invalid option!".colorize(:red)
      end
    end

    new_txt = ''
    while new_txt == '' or new_txt == "\n"
      puts 'what you want to re-insert?'
      new_txt = gets
      if new_txt == "\n"
        puts 'Answer a correct text!'.colorize(:red)
      end
    end
    
    To_Do_List.edit_a_item(path_file, line_of_ID, choose, new_txt)
  when 4 # Delete a item To-Do List
    # Delete item
    correct_Letter = false
    system('clear')
    while correct_Letter == false
      puts 'What Task do you want to delete? Say ID!'
      puts File.open(path_file,'r').read
      id_to_delete = gets.to_i

      if id_to_delete > 0
        txt = To_Do_List.check(path_file)
        if txt.include?("ID      : #{id_to_delete}")
          To_Do_List.delete_a_item(id_to_delete,path_file)
          correct_Letter = true
        else
          system('clear')
          puts 'Say a correct number!'.colorize(:red)
        end
      else
        system('clear')
        puts 'Say a correct number!'.colorize(:red)
      end
    end
  when 5 # End
    stop = true
  else
    system('clear')
    puts 'Error say a correct number!'.colorize(:red)
  end
end
