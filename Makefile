SCSS_ASSETS := $(addprefix scss/,$(addsuffix .scss, \
	_base elements fonts header layout sections style))
PANDOC_CMD := pandoc -s --template templates/simple_page.html --metadata-file=test/mdata.yaml

css/style.css: $(SCSS_ASSETS)
	mkdir -p css
	rm -f css/style.css
	sass scss/style.scss css/style.css

test_html: css/style.css
	mkdir -p html/
	cp -r css html/
	cp -r scss html/
	$(PANDOC_CMD) test/index.md -o html/index.html

	mkdir -p html/oneshot
	$(PANDOC_CMD) test/oneshot/index.md -o html/oneshot/index.html

serve:
	cd html && python -m http.server

clean:
	rm -rf html

.PHONY: error_pages_simple error_pages_blog serve test_html clean
