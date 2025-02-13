stop = false
to_do_list = ToDolist.new()
path_file = 'components/tasks.txt'
while stop == false

  puts '-'*12
  puts 'What do you want to do?'
  puts '[1] Check my To-Do List'
  puts '[2] Add a item on To-Do List'
  puts '[3] Edit a item on To-Do List'
  puts '[4] Delete a item To-Do List'
  puts '[5] End'

  optionAnswer = gets.to_i

  case true

  when optionAnswer == 1 # Check my To-Do List
    system('clear')
    to_do_list.check
    sleep(1)
  when optionAnswer == 2 # Add a item for To-Do List
    puts 'Whats Title?'
    title = gets.chomp
    puts 'Whats Due Date?'
    due_date = gets.chomp
    puts 'Whats Priority?'
    priority = gets.chomp

    to_do_list.create_a_task(title,due_date,priority,path_file)
  when optionAnswer == 3 # Edit a item on To-Do List
    to_do_list.check
    puts '-'*12
    puts 'what ID you want edit?'
    what_item = gets.to_i
    
    to_do_list.edit_a_item(what_item, path_file )
  when optionAnswer == 4 # Delete a item To-Do List
    # Delete item
    correct_Letter = false
    while correct_Letter == false
      sleep(1)
      system('clear')
      puts 'What Task do you want to delete? Say ID!'
      puts File.open(path_file,'r').read
      id_to_delete = gets.to_i

      if id_to_delete > 0
        to_do_list.delete_a_item(id_to_delete,path_file)
        correct_Letter = true
      else
        puts 'Say a correct number!'
      end
    end
  when optionAnswer == 5 # End
    stop = true
  else
    system('clear')
    puts 'Error say a correct number!'
  end
end
