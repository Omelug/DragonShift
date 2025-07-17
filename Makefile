.PHONY: install install_deps clean

install:
	python3 -m venv venv
	. venv/bin/activate && pip install --upgrade pip && pip install -r requirements.txt
	echo "Run: source venv/bin/activate"

install_deps:
	sudo apt update
	sudo apt install -y python3 iproute2 iw wireless-tools aircrack-ng hostapd-mana

clean:
	rm -rf venv
