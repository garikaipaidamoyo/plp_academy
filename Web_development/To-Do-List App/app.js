document.addEventListener('DOMContentLoaded', function() {
    const form = document.getElementById('todo-form');
    const input = document.getElementById('todo-input');
    const list = document.getElementById('todo-list');

    form.addEventListener('submit', function(e) {
        e.preventDefault();
        const task = input.value.trim();
        if (task) {
            addTask(task);
            input.value = '';
            input.focus();
        }
    });

    list.addEventListener('click', function(e) {
        if (e.target.tagName === 'BUTTON') {
            const li = e.target.parentElement;
            list.removeChild(li);
        }
    });

    function addTask(task) {
        const li = document.createElement('li');
        li.textContent = task;
        const button = document.createElement('button');
        button.textContent = 'Remove';
        li.appendChild(button);
        list.appendChild(li);
    }
});
