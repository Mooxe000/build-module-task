echo = console.log
_ = require 'lodash'

invokeConfigFn = (
  register_tasks
  task_tasks
  grunt
) ->
  tasks = task_tasks
  for taskName of tasks
    continue unless tasks.hasOwnProperty taskName
    grunt.config.set taskName
    , tasks[taskName]

  tasks = register_tasks
  for taskName of tasks
    continue unless tasks.hasOwnProperty taskName
    grunt.registerTask taskName
    , tasks[taskName]

  return

exports.invokeConfigFn = invokeConfigFn
