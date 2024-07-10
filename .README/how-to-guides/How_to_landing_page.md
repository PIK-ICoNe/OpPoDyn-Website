# How to Landing Page

The content of the landing page is controlled from a few components

The majority is controlled by the /content/en/_index.md file and comprised of Docsy’s provided Hugo shortcode
![page blocks](https://www.docsy.dev/docs/adding-content/shortcodes/#shortcode-blocks).

## In _index.md

### Cover
To change the **section title** change the text in the "title" field below
``` sh
{{< blocks/cover title="OpPoDyn"> image_anchor="center" height="med" color="primary" }}

```

To change the **size of the image** you shound change the "height" field. You can choose between: min, med, max or auto

To change the **long title** of the project, change the text in the field below
 <!-- Long title of the Project -->
  <p class="lead mt-5"> 
    An Open Source Software Suite for Research on the Dynamics of Networks and Power Grids
  </p>

  mt-5: is the bootstrap code determining the margins

``` sh
{{< blocks/link-down color="info" >}}
```
creates the arrow pointing downwards that moves the page downwards when clicked

### Main Goals of the Project
To change the contents of the **Main Project Goal**, change the text in the field below
{{% blocks/lead color="primary" %}}
  Main Project Goals

  Write the project goals here
{{% /blocks/lead %}}

The blocks/lead block shortcode is a simple lead/title block with centred text and an arrow down pointing to the next
section. In the current setup you should write the goals as a series of short paragraphs separated by a line break to
separate them. Using a list is currently not visually pleasing.


### Features

The Features are located in the < --- Features --- > section. The section is located in the space
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

Set the name of the feature in the title section. Set any information about the feature in the area between the block
lines.
To fold the line (if it is too long), just press enter and continue in the next line (as shown above)

The icons above each Feature is pulled from https://fontawesome.com. I will fix this later. For now, if you want to use
a different icon go to the website, and copy the fa-name code ![start icon](.README/how-to-guides/images/star-icon.png)

If you want no icon, put replace the name of the icon with an empty space

For more information regarding features go to: https://bootstrap.hugoblox.com/blocks/features/

** For more information ** click [here](https://www.docsy.dev/docs/adding-content/shortcodes/#shortcode-blocks)


### Project Partners

To change the title of the section, change the text  between the "> </h2>" in:
``` sh
<h2 class="text-center pb-3">Project Partners</h2>
```

The logos are located in the /static/project_partners/ folder.

Each logo is set using the structure: 
``` sh
		<a href="https://website_address.html"><img alt="alt-text for when the image is not loaded" width="number px" src="project_partners/image_name" style="margin-right: 8em" /></a>
```

To change the size of the logo, change the width field.
To change the alt-text for a logo change the text in the alt=" " field.
To change any the website that the logo points too, change the html address in href=" "
To change the logo, change the text in the src=" " field 

To add a new logo follow the following steps:
1. add the new logo in the /static/project_partners/ folder
2. add the following line underneath the already existing lines:
``` sh
		<a href="https://webaddress_you_want_to_link_to.html"><img alt="BMWK Logo" width="200" src="project_partners/bmwk_logo_en.svg" style="margin-right: 8m" /></a>
```
3. edit the above line to fit your needs


## hugo.yaml

