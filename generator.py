import json
import logging
import random
import time
import sys
import fileinput
 
logging.basicConfig(
    level="INFO",
    format="%(asctime)s — %(name)s — %(levelname)s — %(message)s",
)
logger = logging.getLogger(__name__)
 
 
if __name__ == "__main__":
    # data generating loop
    while True:
        msg = dict()
        for level in range(50):
            (
                msg[f"bid_{str(level).zfill(2)}"],
                msg[f"ask_{str(level).zfill(2)}"],
            ) = (
                random.randrange(1, 100),
                random.randrange(100, 200),
            )
        msg["stats"] = {
            "sum_bid": sum(v for k, v in msg.items() if "bid" in k),
            "sum_ask": sum(v for k, v in msg.items() if "ask" in k),
        }
        # logger.info(f"{json.dumps(msg)}")
        
        # Printing log into file
        logfile="/var/tmp/logfile.json"
        
        fh=logging.FileHandler(logfile, mode='w', encoding=None, delay=False, errors=None)
        logger.addHandler(fh)
        formatter = logging.Formatter('%(message)s, "asctime": "%(asctime)s"')
        fh.setFormatter(formatter)
        logger.info(f"{json.dumps(msg)}")
        fh.close()

        # Fixing log file so it could fit the db and db could be useful to grafana
        for line in fileinput.input(logfile, inplace=True):
            line=line.replace("},",",")
            sys.stdout.write(line)
        
        for line in fileinput.input(logfile, inplace=True):
            line=line[:-6]
            sys.stdout.write(line)
        
        for line in fileinput.input(logfile, inplace=True):
            line=line+"\"}"
            sys.stdout.write(line)

        time.sleep(60)
