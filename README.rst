zsh-nvm
=======

nvm for zsh

|Build Status| |GitHub issues| |GitHub license| |Fossa|

:Version: 0.1.1
:Web: https://github.com/equipindustry/zsh-nvm
:Download: https://github.com/equipindustry/zsh-nvm
:Source: https://github.com/equipindustry/zsh-nvm
:Keywords: zsh-nvm

.. contents:: Table of Contents:
    :local:

Features
--------

* Task

Dependencies
------------

.. code-block:: bash

    https://github.com/mafredri/zsh-async
    https://github.com/luismayta/zsh-core
    https://github.com/luismayta/zsh-notify
    https://github.com/luismayta/zsh-functions

Installation
------------

`oh-my-zsh <https://github.com/robbyrussell/oh-my-zsh>`__ users
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If you're using
`oh-my-zsh <https://gitub.com/robbyrussell/oh-my-zsh>`__, install this
plugin by doing the following:

1. Go to your oh-my-zsh custom plugins directory -
   ``cd ~/.oh-my-zsh/custom/plugins``
2. Clone the plugin
   ``bash   git clone https://github.com/equipindustry/zsh-nvm``\ bash
3. Edit your ``.zshrc`` and add
   ``plugins=( ... zsh-nvm )`` to your list of
   plugins
4. Open a new terminal and enjoy!

`antigen <https://github.com/zsh-users/antigen>`__ users
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If you're using `Antigen <https://github.com/zsh-lovers/antigen>`__,
install this plugin by doing the following:

1. Add ``antigen bundle equipindustry/zsh-nvm`` to your
   ``.zshrc`` where you're adding your other plugins.
2. Either open a new terminal to force zsh to load the new plugin, or
   run ``antigen bundle equipindustry/zsh-nvm`` in a
   running zsh session.
3. Enjoy!

`antibody <https://github.com/getantibody/antibody>`__ users
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If you're using `Antigen <https://github.com/getantibody/antibody>`__,
install this plugin by doing the following:

1. Add :

    .. code-block:: bash

        antibody bundle equipindustry/zsh-nvm

    to your ``.zshrc`` where you're adding your other plugins.
2. Either open a new terminal to force zsh to load the new plugin, or
   run ``antibody bundle equipindustry/zsh-nvm`` in a
   running zsh session.
3. Enjoy!

Quick Start
===========

- Fork this repository

Usage
-----

- Install dependences

.. code-block:: bash

  λ make setup

Support
-------

If you want to support this project, i only accept ``IOTA`` :p.

.. code-block:: bash

    Address: FTDCZELEMOQGL9MBWFZENJLFIZUBGMXLFVPRB9HTWYDYPTFKASJCEGJMSAXUWDQC9SJUDMZVIQKACQEEYPEUYLAMMD


Team
----

+---------------+
| |Luis Mayta|  |
+---------------+
| `Luis Mayta`_ |
+---------------+

License
-------

MIT

Changelog
---------

Please see `CHANGELOG`_ for more information what
has changed recently.

Contributing
------------

Contributions are welcome!

Review the `CONTRIBUTING`_ for details on how to:

* Submit issues
* Submit pull requests

Contact Info
------------

Feel free to contact me to discuss any issues, questions, or comments.

* `Email`_
* `Twitter`_
* `GitHub`_
* `LinkedIn`_
* `Website`_
* `PGP`_

|linkedin| |beacon| |made|

Made with :coffee: and :pizza: by `Luis Mayta`_ and `equipindustry`_.

.. Links
.. _`changelog`: CHANGELOG.rst
.. _`contributors`: docs/source/AUTHORS.rst
.. _`contributing`: docs/source/CONTRIBUTING.rst

.. _`equipindustry`: https://github.com/equipindustry
.. _`Luis Mayta`: https://github.com/luismayta


.. _`Github`: https://github.com/luismayta
.. _`Linkedin`: https://pe.linkedin.com/in/luismayta
.. _`Email`: slovacus@gmail.com
    :target: mailto:slovacus@gmail.com
.. _`Twitter`: https://twitter.com/slovacus
.. _`Website`: https://luismayta.github.io
.. _`PGP`: https://keybase.io/luismayta/pgp_keys.asc

.. |Build Status| image:: https://travis-ci.org/equipindustry/zsh-nvm.svg
   :target: https://travis-ci.org/equipindustry/zsh-nvm
.. |GitHub issues| image:: https://img.shields.io/github/issues/equipindustry/zsh-nvm.svg
   :target: https://github.com/equipindustry/zsh-nvm/issues
.. |GitHub license| image:: https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square
   :target: LICENSE
.. |Fossa| image:: https://app.fossa.io/api/projects/git%2Bgithub.com%2Fequipindustry%2Fzsh-nvm.svg?type=shield
   :target: https://app.fossa.io/projects/git%2Bgithub.com%2Fequipindustry%2Fzsh-nvm?ref=badge_shield

.. Team:
.. |Luis Mayta| image:: https://github.com/luismayta.png?size=100
    :target: https://github.com/luismayta

.. Footer:
.. |linkedin| image:: http://www.linkedin.com/img/webpromo/btn_liprofile_blue_80x15.png
   :target: https://pe.linkedin.com/in/luismayta
.. |beacon| image:: https://ga-beacon.appspot.com/UA-65019326-1/github.com/equipindustry/zsh-nvm/readme
   :target: https://github.com/equipindustry/zsh-nvm
.. |made| image:: https://img.shields.io/badge/Made%20with-Zsh-1f425f.svg
    :target: http://www.zsh.org

.. Dependences:

.. _Pyenv: https://github.com/pyenv/pyenv
.. _Docker: https://www.docker.com/
