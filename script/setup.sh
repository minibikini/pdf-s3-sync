
if [ ! -f bin/pdfinfo ]; then
    wget https://www.xpdfreader.com/dl/xpdf-tools-linux-4.00.tar.gz
    tar xvzf xpdf-tools-linux-4.00.tar.gz
    mv xpdf-tools-linux-4.00/bin64/pdfinfo ./bin/
    rm -rf xpdf-tools-linux-4.00*
fi
