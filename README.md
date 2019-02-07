### Threefold Website

To be able to run this website, you need to have [JumpscaleX](https://github.com/threefoldtech/jumpscalex) sandbox installed.

Running the website from jumpscale lapis central server:

1 - Load the threefold md docs using jumpscale markdowndocs generator
```python
url = "https://github.com/arahmanhamdy/www_threefold_io/tree/master/docs"
threefold_docsite = j.tools.markdowndocs.load(url, name="threefold")
threefold_docsite.write()
```

2 - Link website components [moonscripts /static_files/ views] into lapis repo:
```bash
ln -s /sandbox/code/github/arahmanhamdy/www_threefold_io/applications/threefold.moon /sandbox/code/github/threefoldfoundation/lapis-wiki/applications
ln -s /sandbox/code/github/arahmanhamdy/www_threefold_io/views/threefold /sandbox/code/github/threefoldfoundation/lapis-wiki/views
ln -s /sandbox/code/github/arahmanhamdy/www_threefold_io/static/threefold /sandbox/code/github/threefoldfoundation/lapis-wiki/static
```

3 - Start jumpscale webserver:
```python
j.tools.markdowndocs.webserver()
```
