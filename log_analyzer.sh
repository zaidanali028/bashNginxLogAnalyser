#!/bin/bash

# Declaring the log file path globally
log_file='nginx-access.log'


function ip_address_with_most_requests() {
    echo
    echo "=============================="
    echo "Function: IP Address with Most Requests"
    echo "=============================="
    echo

    

    # I am assigning the sorted IP addresses with counts
    ip_addressess_sorted=$(awk '{print $1}' "$log_file" | sort | uniq -c | sort -nr | awk '{print "IP: "$2", Count: "$1}' | head -n 5)

    echo "Top 5 IP Addresses with Most Requests:"
    echo "$ip_addressess_sorted"
    echo
}

function most_requested_paths() {
    echo
    echo "=============================="
    echo "Function: Most Requested Paths"
    echo "=============================="
    echo

    

    # I am assigning the sorted and formatted most requested paths
    path_sorted=$(awk '{print $7}' "$log_file" | sort | uniq -c | sort -nr | awk '{print "PATH: "$2", Req. count: "$1}' | head -n 5)
    
    echo "Top 5 Most Requested Paths:"
    echo "$path_sorted"
    echo
}

function most_res_status_codes() {
    echo
    echo "=============================="
    echo "Function: Most Frequent Response Status Codes"
    echo "=============================="
    echo

    
    
    # I am assigning the sorted and formatted most frequent response status codes
    res_status_codes=$(awk '{print $9}' "$log_file" | sort | uniq -c | sort -nr | awk '{print "RES STATUS CODE: "$2", Count: "$1}' | head -n 5)
    
    echo "Top 5 Most Frequent Response Status Codes:"
    echo "$res_status_codes"
    echo
}

function most_user_agents() {
    echo
    echo "=============================="
    echo "Function: Most Requested User Agents"
    echo "=============================="
    echo

    
    
    # I am assigning the sorted and formatted most frequent user agents
    user_agents=$(awk '{print $NF}' "$log_file" | sort | uniq -c | sort -nr | awk '{print "USER AGENT: "$2", Count: "$1}' | head -n 5)
    
    echo "Top 5 Most Requested User Agents:"
    echo "$user_agents"
    echo
}

# Call functions to display the results
# Uncomment the following lines to run the functions
# ip_address_with_most_requests
# most_requested_paths
# most_res_status_codes
# most_user_agents
