# OCR Text Extraction for Instagram images

## Getting Started

The other night I read the following article https://www.thedp.com/article/2021/03/black-ivy-stories-penn-chemistry-stem

My thought was to scrape each image from this instagram account, run Azure OCR (more info [here](https://docs.microsoft.com/en-us/azure/cognitive-services/computer-vision/concept-recognizing-text)), and sort posts per ivy school to identify posts specifically about `penn`. From there we can try the instagram commentGetter containerized web scraper to retrieve comments / engagement on those posts

## Get Instagram timeline posts w/ PhantomBuster

- Instagram account: https://www.instagram.com/blackivystories/ `@BlackIvyStories`


- Posts Extracted w/ Phantom Buster: https://phantombuster.com/automations/instagram/12766/instagram-posts-extractor
    - I do not think you can use the Instagram API v2 for tbis timeline extraction as it requires users to accept your app or something? Alternatively you could try and web scrape a profile but that's involved... so we use PhantomBuster because it's a service that is free & easy to use.

## Microsoft Azure Computer Vision

- Code to run here: [instagram_ocr_azure](./instagram_ocr_azure.ipynb)
    - This requires an Azure account. The computer vision endpoint has a free tier at 20 images per minute

### Set your `configs/config.ini` for Azure Computer Vision endpoint

https://portal.azure.com/

For example (you can use key1 or key2):

``` config
[ASC-COMPUTERVISION]
key1 = 7cffe7....
endpoint = https://asc-computervision.cognitiveservices.azure.com/
region = eastus
```