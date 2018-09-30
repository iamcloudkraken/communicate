# Database


 
#####Entities:

##### user:
     id  - number(10,0) - PK
     first_name - varchar2(50)
     last_name  - varchar2(50)
     created_date - date
     is_active - char(1)
     #is_reported
     #login_status - Available,offline
     
##### user_group
    id - number(10,0) - PK
    user_id - number(10,0) - FK
    group_id - number(10,0) - FK
    created_date - date
    is_active  char(1)  
    
##### group
    id  - number(10,0) - PK
    name - varchar2(50)
    created_date - date
    is_active - char(1)     
   
##### message:

     id  - number(10,0) - PK
     subject - varchar2(100)
     creator_id  - number(10,0) - N FK
     message_body - clob
     created_date - date
     parent_message_id  - number(10,0) - N FK
     expiry_date 
     status - nonDelivered,Devlivered,Read,Unread
     
##### message_recipient
    id  - number(10,0) - PK
    recipient_id  - number(10,0) - NFK
    recipient_group_id  - number(10,0) - NFK
    message_id  - number(10,0) - FK
    is_read - number(1,0)


     
          

        
 
    




