const taskInput = document.getElementById('taskInput');
const taskList = document.getElementById('taskList');

// Load tasks from local storage when the page loads
document.addEventListener('DOMContentLoaded', () => {
  const tasks = JSON.parse(localStorage.getItem('tasks')) || [];
  tasks.forEach(task => addTaskToList(task));
});

function addTask() {
  const taskText = taskInput.value.trim();
  if (taskText !== '') {
    const task = { id: Date.now(), text: taskText, completed: false };
    addTaskToList(task);
    saveTask(task);
    taskInput.value = '';
  }
}

function addTaskToList(task) {
  const taskItem = document.createElement('li');
  taskItem.innerHTML = `
    <span class="${task.completed ? 'completed' : ''}">${task.text}</span>
    <button class="delete-btn" onclick="deleteTask(${task.id})">Delete</button>
  `;
  taskItem.addEventListener('click', () => toggleTask(task.id));
  taskList.appendChild(taskItem);
}

function toggleTask(taskId) {
  const tasks = JSON.parse(localStorage.getItem('tasks')) || [];
  const updatedTasks = tasks.map(task => {
    if (task.id === taskId) {
      task.completed = !task.completed;
    }
    return task;
  });
  localStorage.setItem('tasks', JSON.stringify(updatedTasks));
  renderTasks(updatedTasks);
}

function deleteTask(taskId) {
  const tasks = JSON.parse(localStorage.getItem('tasks')) || [];
  const updatedTasks = tasks.filter(task => task.id !== taskId);
  localStorage.setItem('tasks', JSON.stringify(updatedTasks));
  renderTasks(updatedTasks);
}

function saveTask(task) {
  const tasks = JSON.parse(localStorage.getItem('tasks')) || [];
  tasks.push(task);
  localStorage.setItem('tasks', JSON.stringify(tasks));
  renderTasks(tasks);
}

function renderTasks(tasks) {
  taskList.innerHTML = '';
  tasks.forEach(task => addTaskToList(task));
}
