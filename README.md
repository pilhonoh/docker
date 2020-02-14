#installation
<pre>
cd /home
git clone https://github.com/eric9355/docker-practice
cd docker-practice
</pre>

### run
<pre>
# login for private docker repository
docker login
docker pull eric9355/docker-practice
docker run -p 80 :80 -v /home/docker-practice/Project:/var/www/html eric9355/docker-practice
</pre>


