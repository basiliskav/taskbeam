# README

# Task Beam

### Introduction
Task Beam is a web application created as a personal endeavor to explore the capabilities and strengths of AI tools. Task Beam is designed to streamline and manage daily tasks with ease. Built with Ruby on Rails and Bootstrap, it offers an intuitive interface for tracking tasks, prioritizing activities, and enhancing productivity.

### Features
- **Daily Task Management**: Easily add, edit, and delete tasks for specific dates.
- **Printable Task Lists**: Generate and download PDFs of your tasks for any given day with a single click.
- **Responsive Design**: A user-friendly interface that adapts to different screen sizes, ensuring accessibility on mobile devices, tablets, and desktops.

### Prerequisites
Before you begin, ensure you have met the following requirements:
- Ruby 3.x
- Rails 7.x
- Node.js 14.x
- Yarn 1.x

### Setup and Installation
1. **Clone the Repository**

2. **Install Dependencies**
   - Install Ruby dependencies:
     ```bash
     bundle install
     ```
   - Install JavaScript dependencies:
     ```bash
     yarn install
     ```

3. **Database Setup**
   - Run database migrations:
     ```bash
     rails db:migrate
     ```

4. **Start the Server**
   - Run the Rails server:
     ```bash
     rails server
     ```
   - Visit `http://localhost:3000` in your web browser.


### Usage
- **Adding Tasks**: Navigate to the desired date and click on "Add New Task". Fill in the task details and save.
- **Editing and Deleting Tasks**: Each task entry has "Edit" and "Delete" options for easy management.
- **Printing Task Lists**: Use the "Print as PDF" button to download a printable PDF version of the tasks for any selected day.

### Contributing
We welcome contributions to Task Beam! To contribute:
1. Fork the repository.
2. Create a new branch (`git checkout -b feature/AmazingFeature`).
3. Make your changes and commit them (`git commit -m 'Add some AmazingFeature'`).
4. Push to the branch (`git push origin feature/AmazingFeature`).
5. Open a pull request.

### License
Task Beam is released under the [MIT License](LICENSE.md). See the LICENSE file for more details.
