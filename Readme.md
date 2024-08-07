# User Data Management API

## Overview

This project is a set of APIs that manage user data, interact with a MySQL database, and handle email notifications. The APIs handle operations such as uploading user data, viewing user data, backing up the database, and restoring the database.

## Technology Stack

- **Language**: PHP
- **Framework**: Symfony
- **Database**: MySQL

## Prerequisites

Before you begin, ensure you have met the following requirements:

- PHP 7.4 or higher
- Composer
- MySQL
- Symfony CLI

## Setup Instructions

1. **Clone the repository**

   ```
   git clone https://github.com/your-username/user-data-management-api.git
   cd user-data-management-api
   ```

2. **Install Dependencies**

   ```
   composer install
   ```

3. **Configure Environment Variables**

   ```
   cp .env .env.local
   ```

   Edit the `.env.local` file to configure your database and mailer DSN:

   ```
   DATABASE_URL="mysql://your_mysql_username:your_mysql_password@127.0.0.1:3306/user_management"
   MAILER_DSN=smtp://your_email_id:your_app_password@smtp.gmail.com:587
   ```

   Note: To set up an app password for Gmail:

   1. Go to your Google Account settings
   2. Navigate to Security
   3. Under "Signing in to Google," select App Passwords
   4. Generate a new app password for your application

4. **Run the Setup Script**

   ```
   php bin/console doctrine:database:create
   php bin/console doctrine:migrations:migrate
   ```

5. **Start the Symfony Server**
   ```
   symfony server:start
   ```

## API Endpoints

1. **Upload and Store Data API**

   - **Endpoint**: POST /api/upload
   - **Description**: Allows an admin to upload the `data.csv` file.

2. **View Data API**

   - **Endpoint**: GET /api/users
   - **Description**: Allows viewing of all user data stored in the database.

3. **Backup Database API**

   - **Endpoint**: GET /api/backup
   - **Description**: Allows an admin to take a backup of the database.

4. **Restore Database API**

   - **Endpoint**: POST /api/restore
   - **Description**: Allows an admin to restore the database from the backup.sql file.

5. **Test Email Functionality**
   - **Endpoint**: GET /api/test-email
   - **Description**: Tests the email sending functionality.

## Testing the Endpoints

You can use Postman or any other API client to test the endpoints.

### Example Requests

1. **Upload Data**

   - Method: POST
   - URL: http://127.0.0.1:8000/api/upload
   - Body: Form-data
     - Key: file
     - Value: Select data.csv file

2. **View Users**

   - Method: GET
   - URL: http://127.0.0.1:8000/api/users

3. **Backup Database**

   - Method: GET
   - URL: http://127.0.0.1:8000/api/backup

4. **Restore Database**

   - Method: POST
   - URL: http://127.0.0.1:8000/api/restore
   - Body: Form-data
     - Key: file
     - Value: Select backup.sql file

5. **Test Email Functionality**
   - Method: GET
   - URL: http://127.0.0.1:8000/api/test-email

## Important Notes

- To upload the data, use Postman and select body:form-data. Set the key as 'file', type as 'file', and upload the data.csv file.
- To create the backup file, first delete any existing backup file in the backup folder.
- To restore the backup file, run the restore API but make sure that the data.csv is empty and there is no data in the database you created / no data in the user table.
