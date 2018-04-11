# Latex CV

Latex Curriculum Vitae

# Dependencies

```
sudo apt-get install texlive-full fonts-font-awesome
```

# Generate

CV English

```
make en
```

CV Spanish

```
make es
```

CV Portuguese

```
make pt_br
```

# Output
On

```
en/cv.pdf
es/cv.pdf
pt_br/cv.pdf
```


# Using Docker

```
docker build . -t texlive-builder
docker run -it -v $(pwd):/home -w /home texlive-builder bash
```