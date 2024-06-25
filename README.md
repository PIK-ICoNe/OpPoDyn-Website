# The NetPoDyn Website Setup and Usage Guide
Website for Network Dynamics and Power Dynamics


## Prerequisites

To use and modify the website follow the instructions in the order shown here:

- Install Golang by going to [Go installation] (https://go.dev/doc/install) and follow the installation instructions

- Install Git by going to [Git installation] (https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) 
and follow the installation instructions

- Install Dart Sass by going to [Dars Sass installation] (https://gohugo.io/hugo-pipes/transpile-sass-to-css/#dart-sass)
and follow the installation instructions

- Install a recent release of the Hugo "extended" version. If you install from the [Hugo release page]
  (https://github.com/gohugoio/hugo/releases), make sure you download the `extended` version, which supports SCSS.

- Clone the project:
  ```sh
  git clone git@github.com:PIK-ICoNe/NetPoDyn-Website.git
  ```

- Install `PostCSS` locally in the root directory of the project by running the following commands:
  ```sh
  npm install --save-dev autoprefixer
  npm install --save-dev postcss-cli
  npm install -D postcss
  ```


## Run development server:

To run the development server locally in your localhost run:
  ```sh
  hugo serve
  ```




# How to add Content Guide

To all content is located in the (/content) folder. To update the content of the website change the contents of this 
folder.


## Content folder structure

The content folder has the following structure:

/content
1. de __(currently empty and inactive)__
2. en
    - about 
    - benchmarks __(currently empty and inactive)__
    - blog
        - news
        - releases
    - citing __(currently empty and inactive)__
    - docs __(currently populated by placeholder subsections and text)__
        - concepts
        - contribution-guidelines
        - examples
        - getting started
        - overview
        - reference
        - tasks
        - tutorials
    - github __(currently empty and inactive)__
    - roadmap __(currently empty and inactive)__
    - showcase __(currently empty and inactive)__
    - search __(currently inactive)__


## Sections

The various sections and how they can be changed.


### About

The "About" section presents a summary of the project. It is currently populated by text taken from the [PIK website]
(https://www.pik-potsdam.de/en/output/projects/all/1005). 
__the formatting needs to be changed from centered to justified__


### Benchmarks

> [!NOTE] 
> This section is currently empty and inactive


### Blog (Section Title: News)

This section houses the Announcements and Releases subsections. 

#### News (Subsection Title: Announcements)

You can use this section to create News posts. 
There are two types of posts, those with images and those without. 
Example of a post with an image can be found in: ./how_to_guide/post_with_images_example folder
Example of a post without an image can be found in ./how_to_guide/post_without_images_example.md

In general the most important parts are the title, date and description. 
The **title** determines what appears on the page under the Announcements subsection. 
The **date** determines when the post was made. If a post has a future date, it will not appear until the data has come.

A very basic post can be seen under /content/en/blog/news/1st_online_workshop.md

> [!TIP] Entries with future dates will not appear in the page until the date is reached


#### Releases

You can use this section to create new Release Announcements. The same rules apply as in the news section.



### Citing

> [!NOTE]
> This section is currently empty and inactive


### Community

> [!NOTE] 
> Currently this section is populated by placeholder text from the Docsy example project.


### Docs (Section Title: Documentation)

This is the section where documentation is located.
> [!NOTE] 
> Currently this section is populated by placeholder text from the Docsy example project.


### Github

> [!NOTE] 
> This section is currently empty and inactive


### Roadmap

> [!NOTE] 
> This section is currently empty and inactive


### Showcase

> [!NOTE] 
> This section is currently empty and inactive


Last updated on: 25 June 2024