USE bank;

ALTER TABLE trans
ADD PRIMARY KEY (trans_id);

ALTER TABLE loan
ADD PRIMARY KEY (loan_id);

ALTER TABLE card
ADD PRIMARY KEY (card_id);

ALTER TABLE disp
ADD PRIMARY KEY (disp_id);

SELECT * FROM disp;

ALTER TABLE client
ADD PRIMARY KEY (client_id);

ALTER TABLE `order`
ADD PRIMARY KEY (order_id);

ALTER TABLE district
ADD PRIMARY KEY (A1);

ALTER TABLE account
ADD FOREIGN KEY (district_id) REFERENCES district(A1);

ALTER TABLE loan
ADD FOREIGN KEY (account_id) REFERENCES account(account_id);

ALTER TABLE `order`
ADD FOREIGN KEY (account_id) REFERENCES account(account_id);

ALTER TABLE trans
ADD FOREIGN KEY (account_id) REFERENCES account(account_id);

ALTER TABLE client
ADD FOREIGN KEY (district_id) REFERENCES district(A1);

ALTER TABLE disp
ADD FOREIGN KEY (client_id) REFERENCES client(client_id);

ALTER TABLE disp
ADD FOREIGN KEY (account_id) REFERENCES account(account_id);

ALTER TABLE disp
ADD FOREIGN KEY (account_id) REFERENCES account(account_id);

ALTER TABLE card
ADD FOREIGN KEY (disp_id) REFERENCES disp(disp_id);