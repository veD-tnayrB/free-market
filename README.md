## Free Market Backoffice

## Introduction

**Free Market Backoffice** is a project I have created to make it easier to manage stores. I started this project when I
started studying with the CS50, but my goal is to develop it further so that it can be used by real e-commerce
companies. The idea is to provide tools that simplify the daily tasks of people who manage online stores, typical things
in a normal workflow let's say.

## Description:

The project consists of several parts, called modules. Each module has a specific function. Here is a summary
explanation of each one:

### 1. Auth

This module handles everything related to logging in and out of the system. It makes sure that only authorized people
can access certain parts of the backoffice based on their permissions.

\*\*Challenges faced

-   1. Ensuring that user information is kept secure and that the login process is smooth and reliable, plus integration
       with firebase auth which was a challenge and a decision I am very proud of.

### 2. Users

The **Users** module manages all the people who have access to the backoffice. It allows administrators to add new
users, edit their information and delete them if necessary.

### 3. Profiles

**Profiles** define what each user can and cannot do within the system. For example, a manager may have access to more
functions than a regular employee.

\*\*Challenges faced

-   Create a flexible system that can easily assign and change permissions for different types of users. Designing a
    robust permissions system was more complicated than I thought it would be, with respect to permissions alone there
    are about 6 tables in DB.

### Notifications

The **Notifications** module keeps users informed about updates and important events. It can send alerts for things like
new orders, low stock levels, or system updates.

### 5. Modules

The **Modules** (ironic!) module manages all the different parts of the backoffice. It allows administrators to add new
features or remove unnecessary ones.

### 6. Products

The **Products** module is where all the information about the items being sold is managed. Users can add new products,
update details such as price and description, and organize products into categories.

## Conclusion

I hope that Mercado Libre Backoffice can continue to grow and, over time, help real businesses manage their online
stores more efficiently. I'm excited to keep improving it and adding new features in the future.

Thanks!
