all: openvpn-wire-protocol.html openvpn-wire-protocol.txt

openvpn-wire-protocol.html: openvpn-wire-protocol.xml
	xml2rfc openvpn-wire-protocol.xml --html

openvpn-wire-protocol.txt: openvpn-wire-protocol.xml
	xml2rfc openvpn-wire-protocol.xml --text

clean:
	rm -f openvpn-wire-protocol.html openvpn-wire-protocol.txt


#pip3 install bibtex2rfc
bibtex:
	bibtex2rfc bibliography.bib
