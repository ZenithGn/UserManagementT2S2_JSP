<div align="center">

# 📂 Usermanagement PRJ_302

Code chỉ mang tính chất tham khảo nên có bug hãy report code sẽ được update sau mỗi buổi học. Dưới đây là cách clone repository này về netbean đọc kỹ trước khi hỏi!!!!

</div>

<div align="center">

## 📋 Table of Contents

</div >

- [Introduction](#introduction)
- [Technologies Used](#technologies-used)
- [Prerequisites](#prerequisites)
- [Cloning the Repository](#cloning-the-repository)
- [Setting Up in NetBeans](#setting-up-in-netbeans)
- [Running the Application](#running-the-application)
- [Contributing](#contributing)
- [License](#license)

<div align="center">

## 📖 Introduction

</div>

The User Management System is a web application that allows administrators to manage user information, including creating, updating, and deleting user records. It is built using Java for the backend logic and JSP (JavaServer Pages) for the frontend rendering.

<div align="center">

## 🛠️ Technologies Used

</div>

- Java
- JavaServer Pages (JSP)
- Servlet
- NetBeans IDE
- Apache Tomcat 
- MicrosoftSQL Server 

<div align="center">

## ✅ Prerequisites

</div>

Trước khi bắt đầu, hãy đảm bảo bạn đã cài đặt các yêu cầu sau trên hệ thống của mình:

- [Java Development Kit (JDK)](https://www.oracle.com/java/technologies/javase-jdk11-downloads.html) (phiên bản 7)
- [NetBeans IDE](https://netbeans.apache.org/download/index.html)
- [Apache Tomcat](https://tomcat.apache.org/download-90.cgi) (phiên bản 8)
- [MicrosoftSQL Server](https://dev.mysql.com/downloads/mysql/)

<div align="center">

## 📂 Cloning the Repository

</div>

Để sao chép kho lưu trữ, mở terminal và chạy lệnh sau:

```bash
git clone https://github.com/ZenithGn/UserManagementT2S2_JSP.git
```

<div align="center">

## 🛠️ Setting Up in NetBeans

</div>

Làm theo các bước sau để thiết lập dự án trong NetBeans:

1. **Mở NetBeans**: Khởi chạy NetBeans IDE trên hệ thống của bạn.

2. **Nhập Dự Án**:
   - Đi tới `File` > `Open Project`.
   - Điều hướng đến thư mục nơi bạn đã sao chép kho lưu trữ.
   - Chọn thư mục `usermanagerts2_jsp` và nhấp `Open Project`.

3. **Cấu Hình Apache Tomcat**:
   - Đi tới `Tools` > `Servers`.
   - Nhấp `Add Server` và chọn `Apache Tomcat`.
   - Làm theo hướng dẫn để thêm cài đặt Apache Tomcat của bạn.

4. **Xây Dựng Dự Án**:
   - Nhấp chuột phải vào dự án trong bảng Dự Án.
   - Chọn `Clean and Build`.

5. **Thiết Lập Kết Nối Cơ Sở Dữ Liệu**:
   - Cập nhật cài đặt kết nối cơ sở dữ liệu trong tệp `src/main/resources/database.properties` với thông tin đăng nhập MySQL của bạn.

<div align="center">

## ▶️ Running the Application

</div>

Để chạy ứng dụng, làm theo các bước sau:

1. **Khởi Động Apache Tomcat**:
   - Đảm bảo Apache Tomcat đang chạy.

2. **Triển Khai Ứng Dụng**:
   - Nhấp chuột phải vào dự án trong bảng Dự Án.
   - Chọn `Run`.

3. **Truy Cập Ứng Dụng**:
   - Mở trình duyệt web và điều hướng đến `http://localhost:8080/usermanagerts2_jsp`.

<div align="center">

## 🤝 Contributing

</div>

We welcome contributions to improve the User Management System. To contribute, please follow these steps:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature-name`).
3. Make your changes and commit them (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature/your-feature-name`).
5. Open a Pull Request.

<div align="center">

## 📄 License

</div>

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.



<div align="center">


Thank you for visiting the User Management System repository! Have a great day! 😊

</div>
