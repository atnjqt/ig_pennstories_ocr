# OCR Text Extraction for Instagram images

## UPDATE 07/01/2021 --> Local Screenshot image OCR

Please review [screenshot-transcribe-ocr.ipynb](./screenshot-transcribe-ocr.ipynb), which is a similar but different project to the Instagram image analysis described below
=======
Etienne P Jacquot - 06/30/2021

## Getting Started

The other night I read the following article https://www.thedp.com/article/2021/03/black-ivy-stories-penn-chemistry-stem

My thought was to scrape each image from this instagram account, run Azure OCR (more info [here](https://docs.microsoft.com/en-us/azure/cognitive-services/computer-vision/concept-recognizing-text)), and sort posts per ivy school to identify posts specifically about `penn`. From there we can try the instagram commentGetter containerized web scraper to retrieve comments / engagement on those posts
___________


**_UPDATE_** -->> ivy totals based on Azure OCR text extraction of stories:

```
princeton    93
penn         57
brown        48
columbia     43
cornell      42
harvard      41
dartmouth    21
yale         14
```

____________

## Get Instagram timeline posts w/ PhantomBuster

Instagram account: https://www.instagram.com/blackivystories/ `@BlackIvyStories`

- Posts Extracted w/ Phantom Buster: https://phantombuster.com/automations/instagram/12766/instagram-posts-extractor
    - I do not think you can use the Instagram API v2 for tbis timeline extraction as it requires users to accept your app or something? Alternatively you could try and web scrape a profile but that's involved... so we use PhantomBuster because it's a service that is free & easy to use.

_____________

## Microsoft Azure Computer Vision

- Code to run here: [instagram_ocr_azure](./instagram_ocr_azure.ipynb)
    - This requires an Azure account. The computer vision endpoint has a free tier at 20 images per minute

### Create your Computer Vision endpoint

More information here for getting started: [https://azure.microsoft.com/en-us/services/cognitive-services/computer-vision/](https://azure.microsoft.com/en-us/services/cognitive-services/computer-vision/)
- Create the free tier offering!

### Set your `configs/config.ini` for Azure Computer Vision endpoint

Navigate to your Computer Vision resource here: https://portal.azure.com/

- For example (you can use *key1* or *key2*):

``` config
[ASC-COMPUTERVISION]
key1 = 7cffe7....
endpoint = https://asc-computervision.cognitiveservices.azure.com/
region = eastus
```
_________________