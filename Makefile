NAME=draft-spaghetti-grow-downgrade-bgp-community

.PHONY: all
all: drafts

.PHONY: drafts
drafts: $(NAME).txt

$(NAME).txt: $(NAME).xml
	xml2rfc $(NAME).xml --html --text --allow-local-file-access --expand

clean:
	rm -f *.html *.txt

www: $(NAME).txt
	cp $(NAME).exp.xml $(NAME).html $(NAME).txt ~/Downloads/
