# Bank Management System

This project is a web-based application developed using Spring Boot to manage basic banking operations. The system allows users to perform tasks such as creating new accounts, depositing and withdrawing money, checking balance, and closing accounts. It includes mail verification during the registration process to ensure the authenticity of user accounts. It's a practical demonstration of MVC architecture.

## Features

- **Account Creation**: Create a new bank account by providing basic details like name, account type, and initial deposit. A mail verification process is included to ensure the account is valid.
- **Deposit Money**: Add funds to an existing account.
- **Withdraw Money**: Withdraw funds from an existing account while ensuring that the account balance doesn't fall below the required minimum.
- **Transfer Money**: Transfer funds from one self account to another self account.
- **Payment**: pay funds to other's account.
- **Check Balance**: View the current balance of an account.
- **Account Details**: Fetch and display details of a specific account.
- **Payment History**: display all payments details of a specific account.
- **Transaction History**: display all transaction history of a specific account.

## Getting Started

### Prerequisites

- **Java JDK 8 or higher**
- **Maven**: Ensure Maven is installed and configured.
- **MySQL**: The application uses MySQL as the database.
- **Mail Server**: A mail server setup is required for sending verification emails.

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/vaibhavsoni04/BANK-MANAGEMENT-SYSTEM.git
   ```
2. Navigate to the project directory:
   ```bash
   cd BANK-MANAGEMENT-SYSTEM
   ```
3. Update the `application.properties` file with your MySQL database and mail server credentials:
   ```properties
   spring.datasource.url=jdbc:mysql://localhost:3306/bankdb
   spring.datasource.username=your-username
   spring.datasource.password=your-password

   spring.mail.host=smtp.yourmailserver.com
   spring.mail.port=587
   spring.mail.username=your-email
   spring.mail.password=your-email-password
   spring.mail.properties.mail.smtp.auth=true
   spring.mail.properties.mail.smtp.starttls.enable=true
   ```
4. Build the project using Maven:
   ```bash
   mvn clean install
   ```
5. Run the application:
   ```bash
   mvn spring-boot:run
   ```

## Screenshots
![Bank-1](https://github.com/user-attachments/assets/cfa90507-797c-4e7e-8df0-57feeda12142)
![Bank-2](https://github.com/user-attachments/assets/f2775b0c-91e2-4102-89ed-9e2a907f9655)
![Bank-3](https://github.com/user-attachments/assets/33a24a52-fa85-4339-af08-a4b865a0c762)
![Bank-4](https://github.com/user-attachments/assets/c334bc4f-5072-466f-858a-8a91adf4ed91)

## Video Demo
https://github.com/user-attachments/assets/ac00e554-7f43-49bb-bae5-943636e9f08e

## Contributing

Contributions are welcome! If you have suggestions or improvements, feel free to open an issue or create a pull request.
