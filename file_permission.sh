#! bin/bash/
# Permission Types
# For files and directories, there are 4 types of permissions.
# r -> Read
# w -> Write
# x -> Execute
# - -> No Permission


# +  Add a particular permission to user/group/other/all
# -  Remove a particular permission to user/group/other/all
# =  Assignment a particular permission to user/group/other/all

# User Permissions + Group Permissions + Others Permissions order is important


$ chmod u+x (file_name)  # u for user    and    x for execute permission


# We can specify permissions by using octal number.
# 4  Read Permission
# 2  Write Permission
# 1  Execute Permission

# 5  4+1  r-x
# 3  2+1  -wx
# 6  4+2  rw-


$ chmod 777 (file_name)    # 777 give read, write, execute permission to user,group,other
