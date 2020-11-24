pgxn group web pages
====================

This repos currently contains the documentation for pgxnclient.

Available on https://pgxn.github.io/pgxnclient/

Workflow to update is sort of::

    git clone --recursive git@github.com:pgxn/pgxn.github.io.git
    cd pgxn.github.io
    make
    git add --all
    git commit -m "Website updated on $(date)"
    git push
