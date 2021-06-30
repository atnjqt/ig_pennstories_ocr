## Instagram Comment Getter

This directory contains additional code for complimenting the Azure OCR text extraction with the comments on the post...

**_UPDATE_** -->> comment hashtag value counts from Docker selenium for Penn related posts:

```                    
#upenn                        54
#blackstudentsspeak           54
#penn                         54
#blackivystories              52
#universityofpenn             50
#blackstudentsmatter          50
#uofpenn                      49
#ivyleague                    49
#blackatpenn                  46
#blackivyleague               45
#universityofpennslyvania     37
#universityofpennsylvania     14
#uofpennsylvania               3
#universityofpennyslvania      2
#universityofpennysylvania     1
#blackpenn                     1
#wtf                           1
dtype: int64
```

### Docker Selenium Instagram `commentGetter`

You will need Docker on your system, more info here: https://docs.docker.com/get-docker/

You also need selenium for testing on your local Firefox browser
- notice selenium in [reqs.txt](./configs/requirements.txt) for our docker deployment
 
```
pip install selenium
```

### Deployment for automated web scraping instagram comments

* Notebook deployment (testing & dev) --> [getComment_notebook](./getComment_notebook.ipynb)
    - this contains a helpful example for getting started with automated web scraping
* Docker deployment (for many URLs) --> [commentGetter_dockerdeploy](./commentGetter_dockerdeploy.ipynb)
    - this contains a pipeline for looping through known instagram URLs of interest