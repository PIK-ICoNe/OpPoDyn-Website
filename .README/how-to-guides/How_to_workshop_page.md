# How to Workshop Page

To change the content of the workshop page you need to change the content of the content/en/about/_index.md


### Cover
To change the **title of the page** change the "title" field in:
``` sh
---
title: 1st Online Workshop
linkTitle: Workshop
menu: {main: {weight: 10}}
---
```

and in:
``` sh
{{% blocks/cover title="1st Online Workshop" image_anchor="bottom" height="min" %}}
  <p class="lead mt-5"> 
    Workshop Date: 29.08
    Time: 14:00 - 16:00 CET
  </p>
{{% /blocks/cover %}}
```

To change the **size of the image** you shound change the "height" field. You can choose between: min, med, max or auto
To change the **workshop date and time** change the "Workshop Date" and "Time" fields.


### Workshop Goals
``` sh
{{% blocks/section color="dark" type="row"%}}
  # Workshop Goals
  {.text-center}

  ### Our workshop aims to:
  <ul>
    <li> <h3> Identify and understand the needs of our user base </h3> </li>
    <li> <h3> Identify the crucial features that they need </h3>  </li>
    <li> <h3> Understand how can we help them to use the software </h3> </li>
    <li> <h3> Identify the deficiencies of the currently in-use, commercial software and the needs that they fail to fill </h3> </li>
    <li> <h3> Identify simulations that the currently in-use, commercial software, cannot perform </h3> </li>
    <li> <h3> Identify input that would be useful for the development of our software </h3> </li>
  </ul>
{{% /blocks/section %}}
```

To change the **section title** change the # Workshop Goals text
To change the list contents, change the text between <h3> Identify and understand the needs of our user base </h3>
To add an item to the list add a <li> <h3> text </h3> </li> underneath the last item


### Sign-up options
The <br> creates a vertical gap. To increase the gap, add another one

``` sh
{{% blocks/section %}}

# Sign-up options
{.text-center}

<br>

### Sign up for the workshop at: https://www.listserv.dfn.de/sympa/subscribe/oppodyn-workshop-2024-august-29
<br>

### Send us requests for further information or content requests at: OpPoDyn@pik-potsdam.de

{{% /blocks/section %}}

```
