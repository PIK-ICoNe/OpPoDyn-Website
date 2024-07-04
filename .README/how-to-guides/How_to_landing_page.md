# How to Landing Page

The content of the landing page is controlled from a few components

The majority is controlled by the /content/en/_index.md file.

## _index.md

### Landing Page Content

To change the name shown on the cover of the project change the text in the code below
``` sh
{{< blocks/cover title="OpPoDyn">}}

```

To change the long title of the project, change the text in the code shown below

 <!-- Long title of the Project -->
  <p class="lead mt-5"> 
    An Open Source Software Suite for Research on the Dynamics of Networks and Power Grids
  </p>


### Features

The Features are located in the < --- 3rd Section of the page --- >. The section is located in the space
between the following code:

``` sh
{{% blocks/section color="dark" type="row" %}}

{{% /blocks/section %}}
```

To add a feature place the following code inside the above code:
``` sh
  {{% blocks/feature icon="fa-star" title="Name of Feature 1" %}}
    Short info about Feature

    Extra comment underneath
  {{% /blocks/feature %}}
```

Set the name of the feature in the title section. Set any information about the feature in the area between the block lines

The icons above each Feature is pulled from https://fontawesome.com. I will fix this later. For now, if you want to use
a different icon go to the website, and copy the fa-name code ![start icon](.README/how-to-guides/images/star-icon.png)

For more information regarding features go to: https://bootstrap.hugoblox.com/blocks/features/


## hugo.yaml

