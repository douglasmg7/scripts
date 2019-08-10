#! /usr/bin/env bash

# sed	-e 's/ MA/, Massachusetts/' list
# sed	's/ MA/, Massachusetts/' list
# sed	-e 's/ MA/, Massachusetts/' -e 's/ CA/, California/' list
# sed	's/ MA/, Massachusetts/;s/ CA/, California/' list
sed	-f commands list