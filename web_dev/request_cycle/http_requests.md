What are some common HTTP status codes?
I found the top five errors: http://royal.pingdom.com/2009/05/06/the-5-most-common-http-errors-according-to-google/
The number one is 500, which is an internal server error. That's pretty vague.
The next most common errors are all around permissions and request failures, the 400s.
The most common codes are successes, which are all 2xx codes.

What is the difference between a GET request and a POST request? When might each be used?
GET has all of its info in the URL, while POST requires more information in the message body. POST commands are a bit harder to hack and can contain other forms of information, but they can't be bookmarked.

Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
Cookies are stored by the browser and have information about the user. They're important for maintaining information across pages and for authentication. You can request the cookie to get at its information.
