
#!/bin/bash -x
shopt -s extglob
function enterfname {
echo "Enter your First name"
read firstname
namepattern="^[A-Z][a-z]{2,}$"
if [[ $firstname =~ $namepattern ]]
then
	enterlname
else
	echo "Invalid,please re-enter you first name"
	enterfname
fi
}
function enterlname {
echo "Enter your Last name"
read lastname
namepattern="^[A-Z][a-z]{2,}$"
if [[ $lastname =~ $namepattern ]]
then
        entermail
else
        echo "Invalid,please re-enter your last name"
	enterlname
fi
}
function entermail {
echo "Enter your email id"
read email
emailpattern="^([a-z]+)(\.[a-z0-9_\+\-]+)?@([a-z]+)\.([a-z]{2,4})(\.[a-z]{2}))?$"
if [[ $email =~ $emailpattern ]]
then
        entermobile
else
        echo "Invalid,please re-enter your mail id"
	entermail
fi
}
function entermobile {
echo "Enter you mobile number"
read number
numberpattern="^[\+][0-9]{2}[ ][0-9]{10}$"
if [[ $number =~ $numberpattern ]]
then
        rule1
else
        echo "Invalid,please re-enter your phone number"
	entermobile
fi
}

function rule1 {
echo "Enter your Password"
read password
passwordpattern1="[0-9a-zA-Z!@#$%^&*]{8,}"
if [[ $password =~ $passwordpattern1 ]]
then
        rule2
else
        echo "Invalid,Please re-enter your password (should have atleast 8 characters)"
	rule1
fi
}
function rule2 {
passwordpattern2=[A-Z]{1,}
if [[ $password =~ $passwordpattern2 ]]
then
        rule3
else
        echo "Invalid,Please re-enter your password(should have atleast 1 capital letter)"
        rule1
fi
}

function rule3 {
passwordpattern3="[0-9]{1,}"
if [[ $password =~ $passwordpattern3 ]]
then
        rule4
else
	echo "Invalid,Please re-enter your password(should have atleast 1 number)"
        rule1 
fi
}


function rule4 {
passwordpattern4="[!@#$%^&*()_+]{1}"
if [[ $password =~ $passwordpattern4 ]]
then
        echo "valid"
else
        echo "Invalid,Please re-enter your password (should have exactly one special character) "
        rule1
fi
}

enterfname
