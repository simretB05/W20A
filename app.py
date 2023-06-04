import dbcreds
  #Import the module dbcreds which contains the database credentials
import mariadb 
  #Import the module mariadb which provides the necessary functions for connecting to MariaDB
# creating a function with get_userInfo name
def get_userInfo():
    #  Get username input from user
    username_input=input('please add your username>>')
    password_input=input('please add your password>>')
     # starting a connection to the database using the provided credentials
    conn = mariadb.connect(**dbcreds.conn_params)
     # Createing a cursor object to execute SQL queries
    cursor = conn.cursor()
    # Call the et_username' stored procedure with the provided username and password as parameters
    cursor.execute('call get_username(?,?)',[username_input,password_input])
    # Fetch all the rows returned by the query
    results = cursor.fetchall()
    # Close the cursor
    cursor.close()
    # Close the database connection
    conn.close()
     # Return the first column of the first row from the results
    return results[0][0] 
 # Call the get_userInfo function and store the returned value in id_value
id_value=get_userInfo()
# creating a function which takes one argument which is the id_value client id  
def add_post(id):
    # ask the user to enter a title for the post
    title=input("please add a title >>")
    # ask the user to enter the content for the post
    content=input("please add a content>> ")
    # starting a connection to the database using the provided credentials
    conn=mariadb.connect(**dbcreds.conn_params)
    # Createing a cursor object to execute SQL queries
    cursor = conn.cursor()
    # Call the add_post stored procedure with the provided user id, title, and content as parameters
    cursor.execute('CALL add_post(?,?,?)',(id,title,content))
    # Fetch all the rows returned by the query
    result=cursor.fetchall()
    # print the post
    print("added a post")
     # Close the cursor
    cursor.close()
    # Close the database connection
    conn.close()
# Call the add_post function with id_value as the argument
add_post(id_value)
# creating a function with get_post name
def get_post():
         # Establish a connection to the database using the provided credentials
        conn = mariadb.connect(**dbcreds.conn_params)
        # Create a cursor object to execute SQL queries
        cursor = conn.cursor()
        # Call the select_posts stored procedure with title and content as parameters
        cursor.execute("call select_posts('title','content')")
         # Fetch all the rows returned by the query
        results = cursor.fetchall()
        # if there is a results with all rows Return the fetched results
        if(results):
            # Return the fetched results
            return results
         #  else close the database connection and return none/no return value
        else:
            conn.close()
            conn.close()
            return None #no return value
    
get_post_info=get_post()
print(get_post_info)

def log_user():
    #  Get username input from user with usernam and password
    username_input=input('please add your username>>')
    password_input=input('please add your password>>')
    # Continuously loop until a valid username and password combination is provided or until the user chooses to quit
    while(True):
            # starting a connection to the database using the provided credentials
            conn = mariadb.connect(**dbcreds.conn_params)
            # Createing a cursor object to execute SQL queries
            cursor = conn.cursor()
            # Call the get_username stored procedure with the provided username and password as parameters
            cursor.execute('call get_username(?,?)', [username_input, password_input])
             # Fetch all the rows returned by the query
            results = cursor.fetchall()
           # Check if there is exactly one result and if the provided username and password match the retrieved values
            if(len(results)==1 and username_input==str(results[0][1],'utf-8') and password_input==str(results[0][2],'utf-8')):  
                print('You are Loged In')#print a message to show the user that they are loged in
                print('Welcome user, please select from the following options:') # ask the user if they want to do 1,2or 3
                #define a variable with tuple containing with options for the user to choose from
                selection_options=('1:add a new post','2:read all posts','3:quit')
                # Iterate over each option in the selection_options tuple and print each option
                for selection in selection_options:
                    print(selection)
                # ask the user to enter a selection from the available options
                num_from_selection= input('please enter your selection:') 
                # if the user selects 1
                if(num_from_selection=="1"):
                # Call the add_post function with the user ID from the results
                     add_post(results[0][0])
                # else if the user selects 2
                elif(num_from_selection=="2"):
                # Call the get_post function and print the retrieved posts
                   print(get_post())
                #  if the user selects 3
                elif(num_from_selection=="3"): 
                # Exit the current function or loop
                   return 
            else:
            # Display an error message indicating that the provided username and password are incorrect
                print('wrong password and username!')  
                # Exit the current function or loop
                return
           
log_user()
# calling the log_user() to start the loop 

    
