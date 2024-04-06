0x06. Regular expression
========================

Tasks
-----

### 0\. Simply matching School [mandatory]

![](https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/medias/2020/9/ec65557f0da1fbfbff6659413885e4d4822f5b1d.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20220119%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220119T114201Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=d60b194ab54786a298d7c69d1f64f9c7927ba9cb4c0282f38c48abfd5617e338)
Requirements:
-   The regular expression must match `School`
-   Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method

Example:
```
sylvain@ubuntu$ ./0-simply_match_holberton.rb School | cat -e
School$
sylvain@ubuntu$ ./0-simply_match_holberton.rb "Best School" | cat -e
School$
sylvain@ubuntu$ ./0-simply_match_holberton.rb "School Best School" | cat -e
SchoolSchool$
sylvain@ubuntu$ ./0-simply_match_holberton.rb "Grace Hopper" | cat -e
$
```

### 1\. Repetition Token #0 [mandatory]

![](https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/medias/2020/9/e7db3c377d46453588fc84f3a975661d142fee91.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20220119%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220119T114201Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=aec35081fe2ca9121c1ecf1a1cffc668b375d20301ba150826f9fb443cc5cddd)
Requirements:

-   Find the regular expression that will match the above cases
-   Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method

### 2\. Repetition Token #1 [mandatory]

![](https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/medias/2020/9/c59ff11db195d5cf17d1790a5141ae2f234786d2.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20220119%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220119T114201Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=d8c45da1f7261aa6b030344bf8883f5c268fd41d09e43980b1cf5a5df532da5d)
Requirements:
-   Find the regular expression that will match the above cases
-   Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method

### 3\. Repetition Token #2 [mandatory]

![](https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/medias/2020/9/3b6bf4aeca6a0c2de584e7f5d68d11eef57ce205.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20220119%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220119T114201Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=8ea8d15da3142dce5c21ed528a6a60cf8da17da9af3fe7fe53d983545af6b5fe)
Requirements:

-   Find the regular expression that will match the above cases
-   Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method

### 4\. Repetition Token #3 [mandatory]

![](https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/medias/2020/9/f8dbcb9cf5ae569a8645027dc46e81cb372ce28e.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20220119%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220119T114201Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=23e6ac77fe5db80f35afc4f40994f4633961a851d287a9153c453e8b9ee1d3ef)
Requirements:

-   Find the regular expression that will match the above cases
-   Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method
-   Your regex should not contain square brackets

### 5\. Not quite HBTN yet [mandatory]

Requirements:

-   The regular expression must be exactly matching a string that starts with `h` ends with `n` and can have any single character in between
-   Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method

Example:
```
sylvain@ubuntu$ ./5-beginning_and_end.rb 'hn' | cat -e
$
sylvain@ubuntu$ ./5-beginning_and_end.rb 'hbn' | cat -e
hbn$
sylvain@ubuntu$ ./5-beginning_and_end.rb 'hbtn' | cat -e
$
sylvain@ubuntu$ ./5-beginning_and_end.rb 'h8n' | cat -e
h8n$
sylvain@ubuntu$
$
```
### 6\. Call me maybe [mandatory]

This task is brought to you by a professional advisor [Neha Jain](https://alx-intranet.hbtn.io/rltoken/GqwvXAvTXR_JXqyTvZ4AzQ "Neha Jain"), Senior Software Engineer at LinkedIn.

Requirement:

-   The regular expression must match a 10 digit phone number

Example:

```
sylvain@ubuntu$ ./6-phone_number.rb 4155049898 | cat -e
4155049898$
sylvain@ubuntu$ ./6-phone_number.rb " 4155049898" | cat -e
$
sylvain@ubuntu$ ./6-phone_number.rb "415 504 9898" | cat -e
$
sylvain@ubuntu$ ./6-phone_number.rb "415-504-9898" | cat -e
$
sylvain@ubuntu$
```

### 7\. OMG WHY ARE YOU SHOUTING? [mandatory]

![](https://alx-intranet.hbtn.io/images/contents/sysadmin/projects/78/shouting.jpg)

Requirement:

-   The regular expression must be only matching: capital letters

Example:

```
sylvain@ubuntu$ ./7-OMG_WHY_ARE_YOU_SHOUTING.rb "I realLy hOpe VancouvEr posseSs Yummy Soft vAnilla Dupper Mint Ice Nutella cream" | cat -e
ILOVESYSADMIN$
sylvain@ubuntu$ ./7-OMG_WHY_ARE_YOU_SHOUTING.rb "WHAT do you SAY?" | cat -e
WHATSAY$
sylvain@ubuntu$ ./7-OMG_WHY_ARE_YOU_SHOUTING.rb "cannot read you" | cat -e
$
sylvain@ubuntu$

```
