stop = false
to_do_list = ToDolist.new()
while stop == false

  puts '-'*12
  puts 'What do you want to do?'
  puts '[1] Check my To-Do List'
  puts '[2] Add a item for To-Do List'
  puts '[3] Delete a item To-Do List'
  puts '[4] End'

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

    to_do_list.create_a_task(title,due_date,priority,'components/tasks.txt')
  when optionAnswer == 3 # Delete a item To-Do List
    # Delete item
    system('clear')
    puts 'What Task do you want to delete? Say ID!'
    puts File.open('components/tasks.txt','r').read
    id_to_delete = gets.to_i

    to_do_list.delete_a_item(id_to_delete,'components/tasks.txt')
  when optionAnswer == 4 # End
    stop = true
  else
    system('clear')
    puts 'Error say a correct number!'
  end
end
