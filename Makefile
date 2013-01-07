
SOURCES = $(wildcard *.pmml) 
TARGETS = $(SOURCES:.pmml=.pmd)

all: $(TARGETS)

%.pmd: %.pmml
	mucc $< $@

clean:
	rm -f *.pmd

