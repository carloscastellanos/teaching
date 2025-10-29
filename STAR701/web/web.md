# STAR 701

# Technology in the Studio

### Fall 2025

# The Web as a Canvas: An Introduction to HTML & CSS

The goal of this activity is to introduce you to web coding (HTML and CSS) in a way that is accessible, creative, and immediately rewarding.


Tools: A web browser (Safari, Chrome, Firefox) and a text editor (like VS Code, Sublime Text, or even a simple one like TextEdit or Notepad). We'll use the browser's developer tools for live experimentation.

Approach: We'll start by explaining that every website is made of two fundamental languages: HTML (the structure) and CSS (the style). We'll use the analogy of a house: HTML is the walls and rooms, CSS is the paint and furniture.

There are three parts:
Part 1: HTML - Building the Structure
Part 2: CSS - Styling the Page
Part 3: Experimentation and Play


## PART I: HTML

**__Introduction__**

HTML stands for HyperText Markup Language. It's the skeleton of a webpage, a "markup" language that describs a web page's struture and instructs the browser how to display its contets (images, text, etc). HTML files are simple text files. Look at this [HTML Introduction](https://www.w3schools.com/html/html_intro.asp) for more details.

**__Your First Web Page__**

An HTML page consist of a series of **elements** or **tags**. Let's builld a simple web page and fill it with these tags.

1. Create folder anywhere on your computer. Call it whatever you like.
2. Create a file in your text editor titled `index.html`. Save it in the folder you just created.
3. Now add the following HTML code to this file:
```
<!DOCTYPE html>
<html>
<head>
    <title>My Art Page</title>
</head>
<body>
    <h1>Welcome to My Art Page</h1>
    <p>This is a paragraph about my art.</p>
</body>
</html>
```

We will use this as our basic structure.

4. Explanation of each part:

- `<!DOCTYPE html>`: Tells the browser this is an HTML5 document.

- `<html>`: The root element.

- `<head>`: Contains meta information (e.g. title, description) links to CSS, javascript files, etc.

- `<title>`: The title of the page (appears in the browser tab).

- `<body>`: The visible part of the page.

5. Now, let's add more content. Here are some common tags:

- Headings: `<h1>` to `<h6>` (e.g. `<h1> This is Heading 1</h1>`)

- Paragraph: `<p>` (e.g. `<p>This is a paragraph</p>`)

- Image: `<img>` (e.g. `<img src="image.jpg" alt="description" />`)

- Anchor/Link: `<a>` (e.g. `<a href="http://example.com">Link Text</a>`)

- Division (a container): `<div>` (e.g. `<div>anything</div>`)

6. Now create a simple page. Make it like a portfolio page, showing your work. Include the following:

- A few headings (for your name, project titles, etc)

- A paragraph about each work.

- An image for each work (you can grab images form the web to use as place holders for now).

- Links to your (real) web site or that of a favorite artist.

- All your tags should go inside the `<body></body>` tags

- Save the file and open it in a browser to see the results.


#PART II: CSS

**__Introduction__**

CSS stands for Cascading Style Sheets. It's the skin of a webpage, describing how HTML elements are to be displayed on screen. It can control the layout of multiple web pages all at once. CSS files are simple text files. Look at this [CSS Introduction](https://www.w3schools.com/css/css_intro.asp) for more details.

CSS can be included in an HTML page in. three ways:

- Inline (using the `style` attribute) - not recommended for large projects but good for quick tests.

- Internal (using a `<style>` tag in the <head>)

- External (using a separate .css file) - best practice for larger projects.

**__Your First Style Sheet__**

Style sheets are constructed using sets of CSS **rules**, which use the following syntax:

```
selector {
    property: value;
}
```

Let's add some styling to our web page using these rules.

1. First, add a `<style>` tag in the `<head>` of your HTML document. Like so:
```
<style>

</style>
```

Your css rules will go inside this style tag

2. Now, let's style the body to change the background color and font:

```
body {
    background-color: rgb(0,255,0);
    font-family: Arial, Helvetica, sans-serif;
}
```

3. Now style the headings

```
h1 {
    color: #000066;
    text-align: center;
}

```

4. Next, style the paragraphs

```
p {
  color: red;
  font-family: "Times New Roman", Times, serif;
}
```

5. CSS Classes & IDs

Up until now, we have been using CSS **element** selectors, which select HTML elements (tags). Now let's look at **class** and **ID** selectors.

- Class: for multiple elements, denoted by a dot (.) in CSS.

- ID: for a unique element (only one per html page), denoted by a hash (#) in CSS.

Add the following to your ``style`` tag:

```
.highlight {
    background-color: yellow;
    padding: 10px;
}

p.highlight {
    text-align: center;
}
```

Now in the HTML, add the class to a header and a paragraph:

```
<h1 class="highlight">This is a highlighted header.</h1>

<p class="highlight">This is a highlighted paragraph.</p>
```

>[!NOTE]
> **An id name cannot start with a number!**
