Flask is a popular Python web framework. Frameworks very often introduce potential sources for untrusted data, [Flask request](https://flask.palletsprojects.com/en/3.0.x/api/#incoming-request-data) being one of them. For example, a source of untrusted data could be:

```
username = request.args.get("username")
```

Write a query to find `request.args`

See solution in this folder.
