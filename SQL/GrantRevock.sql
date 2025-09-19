-- Create a new database
CREATE DATABASE bank;
-- Use the database
USE bank;
-- Create accounts table
CREATE TABLE accounts (
    account_id INT AUTO_INCREMENT PRIMARY KEY,
    account_holder VARCHAR(100),
    balance DECIMAL(10,2)
);
-- Insert some sample data
INSERT INTO accounts (account_holder, balance) VALUES
('Alice', 5000.00),
('Bob', 7000.00),
('Charlie', 3000.00);

CREATE TABLE transactions (
    txn_id INT AUTO_INCREMENT PRIMARY KEY,
    from_account INT,
    to_account INT,
    amount DECIMAL(12,2),
    txn_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) DEFAULT 'PENDING',
    FOREIGN KEY (from_account) REFERENCES accounts(account_id),
    FOREIGN KEY (to_account) REFERENCES accounts(account_id)
);
-- Insert a few past transactions
INSERT INTO transactions (from_account, to_account, amount, status) VALUES
(1, 2, 1000.00, 'COMPLETED'),
(3, 1, 2000.00, 'COMPLETED');

-- create user ?

create user 'bank_user1'@'localhost' identified by 'password1';
create user 'bank_user2'@'%' identified by 'password2';

select user, host from mysql.user;

grant update on bank.accounts to 'bank_user1'@'localhost';
grant select on bank.accounts to 'bank_user1'@'localhost';
grant select,insert,update on bank.accounts to 'bank_user2'@'%';

show grants for 'bank_user2'@'%';
show grants for 'bank_user2'@'%';

revoke update on bank.accounts from 'bank_user2'@'%';
show grants for 'bank_user2'@'%';

use bank;
select * from accounts;
update accounts set balance = 0 where account_id=1;

show grants for 'bank_user1'@'localhost';



grant insert on bank.transactions to 'bank_user2'@'%';

