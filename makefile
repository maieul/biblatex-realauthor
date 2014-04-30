FILES = *.bbx *.dbx *.lbx documentation   makefile README


dist: all
	rm -rf biblatex-realauthor
	mkdir biblatex-realauthor
	cp README *bbx *dbx *lbx *makefile biblatex-realauthor
	mkdir biblatex-realauthor/documentation
	cp documentation/*tex documentation/*bib documentation/*pdf documentation/makefile  biblatex-realauthor/documentation
	$(RM) ../biblatex-realauthor.zip
	zip -r ../biblatex-realauthor.zip biblatex-realauthor


clean:
	$(MAKE) -C documentation clean
	@$(RM) *.pdf *.toc *.aux *.out *.fdb_latexmk *.log *.bbl *.bcf *.blg *run.xml *.synctex.gz*

all: documentation/example.tex documentation/biblatex-realauthor.tex documentation/example.bib
	$(MAKE) -C documentation all