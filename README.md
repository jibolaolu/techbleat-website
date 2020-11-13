= Techbleat Landing Page 

== Front-End Team

## Here is the new landing page the Front end team has been working on
![Landping Page](./page.png)


Note:  Ensure you have Nginx installed on the server. You can check using 

```
sudo service nginx status
```

##To deploy the code , follow the steps below.

```
sudo cp index.html  /usr/share/nginx/html
sudo cp devops.jpg /usr/share/nginx/html 
```

== If you are using Jenkins to pipeline the work, you may need to give sudo permission to Jenkins user.




