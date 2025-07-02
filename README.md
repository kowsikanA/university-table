# University Info Web Application

This is a **Java Servlet + JSP-based web application** that displays a table of **university information**. The project runs on the **WildFly application server** and can be developed using **Eclipse** or **IntelliJ IDEA**.

## 🛠 Technologies Used
- Java (Servlets)
- JSP (Java Server Pages)
- WildFly (Java EE Server)
- Maven (for build)
- Eclipse or IntelliJ IDEA

## 📋 Features
- Displays a formatted table of university data
- Servlets and JSP used for dynamic rendering
- Easy deployment on WildFly

## 🚀 How to Run

### 1. Open Project in IDE
- Import the project into **Eclipse** or **IntelliJ IDEA** as a **Maven project**.

### 2. Build the Project
- In the terminal or IDE, run:
  ```bash
  mvn clean install
  ```
- Wait for the message:
  ```
  BUILD SUCCESS
  ```

### 3. Start WildFly Server
- Launch your **WildFly server** from the IDE or terminal.

### 4. Deploy the Application
- Once the server is running:
  - Add the built `.war` file or the project to the **WildFly server deployments**.
  - You can do this via Eclipse/IntelliJ or by copying the `.war` file to:
    ```
    wildfly/standalone/deployments/
    ```

### 5. Access the Application
- Navigate to:
  ```
  http://localhost:8080/<your-app-context>
  ```
  Replace `<your-app-context>` with the name of your deployed application.

### 6. Servlet Routing
- Follow servlet mappings and URL routes defined in:
  ```
  src/main/webapp/WEB-INF/web.xml
  ```

## 📎 Example Link
If your app context is `university-info`, open:
```
http://localhost:8080/university-info/
```

## ✅ Notes
- Ensure WildFly version matches your Java EE target.
- If you are using a non-default port, update the URL accordingly.

