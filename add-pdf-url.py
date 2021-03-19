import sys
from bs4 import BeautifulSoup as bs

INDEX_FILE_PATH = sys.argv[1]

with open(INDEX_FILE_PATH, "r+") as f:
  html = f.read()
  soup = bs(html, "html.parser")
  
  link_tag = soup.new_tag("link", attrs={
    "rel" : "stylesheet", 
    "href" : "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
  })
  soup.head.append(link_tag)

  p_tag = soup.new_tag("p")
  a_tag = soup.new_tag("a", attrs={
    "href" : "index.pdf"
  })
  i_tag = soup.new_tag("i", attrs={
    "class" : "fa fa-file-pdf-o",
    "style" : "font-size:24px;color:red"
  })
  a_tag.append(i_tag)
  p_tag.append(a_tag)
  h2_tag = soup.find("h2")
  h2_tag.insert_after(p_tag)

  f.truncate(0)
  f.write(str(soup))