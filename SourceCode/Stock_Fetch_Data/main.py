from fetch_stock_price import *
from connect_mongodb import *

# Url of each stock exchange
stock_exchanges = {
    "hose": "https://banggia.cafef.vn/stockhandler.ashx?center=1",
    # "hnx": "https://banggia.cafef.vn/stockhandler.ashx?center=2",
    # "upcom": "https://banggia.cafef.vn/stockhandler.ashx?center=9",
}

def main(namefile, se_url):
    """
    Execute fetch program

    :param namefile: str
    :param se_url: str
    :return: None
    """
    list_stocks = read_stocks_text_file(namefile)
    se = fetch_function(se_url, list_stocks)
    import_to_mongodb(se, namefile)


if __name__ == "__main__":
    for name, se_url in stock_exchanges.items():
        main(name, se_url)
